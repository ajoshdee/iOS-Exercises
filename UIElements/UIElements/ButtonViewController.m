//
//  ButtonViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/9/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "ButtonViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ButtonViewController ()
@property (weak, nonatomic) IBOutlet UIButton *customButton;

@end

@implementation ButtonViewController

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
    _customButton.layer.cornerRadius = 8;
    _customButton.layer.borderWidth = 1;
   _customButton.layer.borderColor = [UIColor grayColor].CGColor;
    _customButton.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
