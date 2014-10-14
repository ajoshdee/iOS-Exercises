//
//  MainViewController.m
//  MVCExercise
//
//  Created by Josh Dee on 10/9/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "MainViewController.h"
#import "LevelViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        
        NSDictionary *letterDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"Letter", @"Title",nil];
        NSDictionary *colorDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"Color", @"Title",nil];
        NSDictionary *foodDict = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"Food", @"Title",nil];
        self.titles = [[[NSMutableArray alloc] initWithObjects: letterDict, colorDict, foodDict, nil]autorelease];
        
        
        
    }
    
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{

    return [self init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return self.titles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier]autorelease];
    }
    
    [cell.textLabel setText:[[self.titles objectAtIndex:indexPath.row] objectForKey: @"Title"]];
    
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"attribute %@, indexPath %@",[self.titles objectAtIndex:indexPath.row],indexPath);
    LevelViewController *levelViewController = nil;
    if(!levelViewController)
    {
        levelViewController =[[[LevelViewController alloc] init]autorelease];
    }
    
    UITableViewCell *cell = [[self tableView] cellForRowAtIndexPath:indexPath];
    levelViewController.title = cell.textLabel.text;
    [levelViewController setCategory:[[self.titles objectAtIndex:indexPath.row] objectForKey: @"Title"]];
    [self.navigationController pushViewController:levelViewController
                                              animated:YES];
   

}

-(void)dealloc
{
    NSLog(@"Deallocating MainViewController");
    _titles = nil;
    
    [_titles release];
    [super dealloc];
}
@end
