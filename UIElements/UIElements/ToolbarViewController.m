//
//  ToolbarViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/10/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "ToolbarViewController.h"

@interface ToolbarViewController ()

@end

@implementation ToolbarViewController
- (IBAction)btnRedTouched:(id)sender {
     self.view.backgroundColor = [UIColor redColor];
}
- (IBAction)btnGreenTouched:(id)sender {
    self.view.backgroundColor = [UIColor greenColor];
}
- (IBAction)btnBlueTouched:(id)sender {
     self.view.backgroundColor = [UIColor blueColor];
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
