//
//  ActionViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/10/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "ActionViewController.h"

@interface ActionViewController ()
@property (nonatomic, strong) UILabel *label;
- (void)showActionSheet:(id)sender;
@end

@implementation ActionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20.0f, 186.0f, 280.0f, 88.0f);
    [button setTitle:@"Show Action Sheet" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.tintColor = [UIColor darkGrayColor];
    [button addTarget:self action:@selector(showActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    CGRect labelRect = CGRectMake(40, 100, 240, 30);
    self.label = [[UILabel alloc] initWithFrame:labelRect];
    self.label.font = [UIFont boldSystemFontOfSize:16.0f];
    self.label.layer.borderColor = [UIColor blackColor].CGColor;
    [self.view addSubview:self.label];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)showActionSheet:(id)sender
{
    NSString *actionSheetTitle = @"Action Sheet";
    NSString *destructiveTitle = @"Destructive Button";
    NSString *other1 = @"Button 1";
    NSString *other2 = @"Button 2";
    NSString *other3 = @"Button 3";
    NSString *cancelTitle = @"Cancel Button";
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:actionSheetTitle
                                  delegate:self
                                  cancelButtonTitle:cancelTitle
                                  destructiveButtonTitle:destructiveTitle
                                  otherButtonTitles:other1, other2, other3, nil];
    
    [actionSheet showInView:self.view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if  ([buttonTitle isEqualToString:@"Destructive Button"]) {
        self.label.text = @ "Destructive Button";
    }
    if ([buttonTitle isEqualToString:@"Button 1"]) {
        self.label.text = @ "Button 1";
    }
    if ([buttonTitle isEqualToString:@"Button 2"]) {
        self.label.text = @ "Button 2";
    }
    if ([buttonTitle isEqualToString:@"Button 3"]) {
       self.label.text = @ "Button 3";
    }
    if ([buttonTitle isEqualToString:@"Cancel Button"]) {
    self.label.text = @ "Cancel";
    }
}

@end
