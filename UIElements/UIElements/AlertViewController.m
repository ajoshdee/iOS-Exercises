//
//  AlertViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/10/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation AlertViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIAlertView *firstAlert = [[UIAlertView alloc] initWithTitle:@"Alert Message" message:@"Select a Button" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil];
        // optional - add more buttons:
        [firstAlert addButtonWithTitle:@"Ok"];
        [firstAlert addButtonWithTitle:@"Others	"];
        [firstAlert show];
        
        CGRect labelRect = CGRectMake(40, 100, 240, 30);
        self.label = [[UILabel alloc] initWithFrame:labelRect];
        self.label.font = [UIFont boldSystemFontOfSize:16.0f];
        self.label.layer.borderColor = [UIColor blackColor].CGColor;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.label];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {

        self.label.text = @ "OK was selected";
        
        
       
        /*UIAlertView *newGameAlert = [[UIAlertView alloc] initWithTitle:@"Game Reset" message:@"Game has been reset" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
         // optional - add more buttons:
         [newGameAlert addButtonWithTitle:@"OK"];
         [newGameAlert addButtonWithTitle:@"NEW GAME"];
         [newGameAlert addButtonWithTitle:@"EXIT"];
         [newGameAlert show];
         */
    }
    else if (buttonIndex == 2){
         self.label.text = @ "Others was selected";
    }
    else{
        self.label.text = @ "Cancel was selected";
    }
}

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
