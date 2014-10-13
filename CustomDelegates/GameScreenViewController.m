//
//  GameScreenViewController.m
//  CustomDelegates
//
//  Created by Josh Dee on 10/13/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "GameScreenViewController.h"
#import "PauseScreenViewController.h"

@interface GameScreenViewController ()<PauseScreenViewControllerDelegate>
@property (nonatomic, retain) PauseScreenViewController *pauseGameController;
@end

@implementation GameScreenViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        PauseScreenViewController *pauseGame = [[PauseScreenViewController alloc] init];
        [pauseGame setDelegate:self];
        self.pauseGameController = pauseGame;
        [self.view addSubview:self.pauseGameController.view];
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

// Method required from Delegate
-(void)pauseGameDelegateMethod
{
    NSLog(@"Successfully called the Custom Delegate method!");
}

@end
