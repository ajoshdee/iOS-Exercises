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
    self.itemModels = [[NSMutableArray alloc] init];
    NSMutableArray *arrayNotFiltered = [NSMutableArray arrayWithContentsOfFile:filePath];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(itemCategory == %@)",_category];
    /* _itemCategory not specified: list all */
    if(!_category){
        predicate = [NSPredicate predicateWithValue:YES];
    }
    
    NSArray *filteredarray = [arrayNotFiltered filteredArrayUsingPredicate:predicate];
    
    for (NSDictionary *dict in filteredarray) {
        ItemModel *item = [[ItemModel alloc] initWithDictionary:dict];
        [self.itemModels addObject:item];
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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
     NSString *text = [self.itemModels[indexPath.row] itemTitle];
    
    [cell.textLabel setText:text];
    

    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailViewController =[[DetailViewController alloc] init];
    
    [detailViewController setItemmodel:_itemModels[indexPath.row]];
    [self.navigationController pushViewController:detailViewController
                                         animated:YES];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
