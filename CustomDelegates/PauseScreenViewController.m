//
//  PauseScreenViewController.m
//  CustomDelegates
//
//  Created by Josh Dee on 10/13/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "PauseScreenViewController.h"

@interface PauseScreenViewController ()

@end

@implementation PauseScreenViewController

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
- (IBAction)pauseButtonMethod:(id)sender {
    if([self.delegate respondsToSelector:@selector(pauseGameDelegateMethod)])
    {
        NSLog(@"call pauseGameDelegateMethod from MainViewController");
        [self.delegate pauseGameDelegateMethod];
    }
    else
        NSLog(@"Does not conforms to the Delegate Protocol");
}

@end
