//
//  MainViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/9/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "MainViewController.h"
#import "ButtonViewController.h"
#import "ControlViewController.h"
#import "AlertViewController.h"
#import "ActionViewController.h"
#import "TextViewController.h"
#import "PickerViewController.h"
#import "ImagesViewController.h"
#import "SegmentViewController.h"
#import "ToolbarViewController.h"
#import "TabViewController.h"
#import "secondTabViewController.h"
#import "WebViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    self.array = @[@"UIButton",@"UIControl",@"Text View", @"UIPickerView", @"UIImageView", @"UISegmentedControl", @"UIToolBar", @"UITabBar", @"UIAlertView", @"UIActionSheet", @"UIWebView"];
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
    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [cell.textLabel setText:[self.array objectAtIndex:indexPath.row]];

    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        ButtonViewController *buttonViewController =[[ButtonViewController alloc] init];
        [self.navigationController pushViewController:buttonViewController animated:YES];
    }
    
    else if (indexPath.row == 1) {
        ControlViewController *controlViewController =[[ControlViewController alloc] init];
        [self.navigationController pushViewController:controlViewController animated:YES];
    }
    
    else if (indexPath.row == 2){
        TextViewController *textViewController =[[TextViewController alloc] init];
        [self.navigationController pushViewController:textViewController animated:YES];
    }
    else if (indexPath.row == 3){
        PickerViewController *pickerViewController =[[PickerViewController alloc] init];
        [self.navigationController pushViewController:pickerViewController animated:YES];
    }
    else if (indexPath.row == 4){
        ImagesViewController *imagesViewController =[[ImagesViewController alloc] init];
        [self.navigationController pushViewController:imagesViewController animated:YES];
    }
    else if (indexPath.row == 5){
        SegmentViewController *segmentViewController =[[SegmentViewController alloc] init];
        [self.navigationController pushViewController:segmentViewController animated:YES];
    }
    else if (indexPath.row == 6){
        ToolbarViewController *toolbarViewController =[[ToolbarViewController alloc] init];
        [self.navigationController pushViewController:toolbarViewController animated:YES];
    }
    else if (indexPath.row == 7){
        UITabBarController *tab = [[UITabBarController alloc] init];
        TabViewController *tvc = [[TabViewController alloc] init];
        secondTabViewController *stvc = [[secondTabViewController alloc] init];
        tab.viewControllers = @[tvc,stvc];
        [self.navigationController pushViewController:tab animated:YES];

    }
   
    else if (indexPath.row == 8){
        AlertViewController *alertViewController =[[AlertViewController alloc] init];
        [self.navigationController pushViewController:alertViewController animated:YES];
    }
    else if (indexPath.row == 9){
        ActionViewController *actionViewController =[[ActionViewController alloc] init];
        [self.navigationController pushViewController:actionViewController animated:YES];
    }
    else if (indexPath.row == 10){
        WebViewController *webViewController =[[WebViewController alloc] init];
        [self.navigationController pushViewController:webViewController animated:YES];
    }
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
