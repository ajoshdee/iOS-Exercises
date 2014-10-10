//
//  TextViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/10/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TextViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    self.textLabel.text = textField.text;
    
    self.textField.text = @"";
    [self.textField resignFirstResponder];
    
    return YES;
}

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
