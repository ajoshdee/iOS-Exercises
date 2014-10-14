//
//  LevelViewController.m
//  MVCExercise
//
//  Created by Josh Dee on 10/9/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "LevelViewController.h"
#import "DetailViewController.h"
#import "ItemModel.h"

@interface LevelViewController ()
@property(nonatomic) NSMutableArray *itemModels;
@end

@implementation LevelViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Exercise-Tool" ofType:@"plist"];
    _itemModels = [[[NSMutableArray alloc] init]autorelease];
    NSMutableArray *arrayNotFiltered = [NSMutableArray arrayWithContentsOfFile:filePath];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(itemCategory == %@)",_category];
    /* _itemCategory not specified: list all */
    if(!_category){
        predicate = [NSPredicate predicateWithValue:YES];
    }
    
    NSArray *filteredarray = [arrayNotFiltered filteredArrayUsingPredicate:predicate];
    
    arrayNotFiltered = nil;
    for (NSDictionary *dict in filteredarray) {
        ItemModel *item = [[ItemModel alloc] initWithDictionary:dict];
        [self.itemModels addObject:item];
        
        [item release];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return self.itemModels.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier]autorelease];
    }
     NSString *text = [self.itemModels[indexPath.row] itemTitle];
    
    [cell.textLabel setText:text];
    

    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailViewController = nil;
    if(!detailViewController)
    {
        detailViewController =[[[DetailViewController alloc] init]autorelease];
    }
    
    [detailViewController setItemmodel:_itemModels[indexPath.row]];
    [self.navigationController pushViewController:detailViewController
                                         animated:YES];
}
-(void)dealloc
{
    NSLog(@"Deallocating LevelViewController");
    _itemModels = nil;
    _category = nil;
    
    [_itemModels release];
    [_category release];
    [super dealloc];
}
@end
