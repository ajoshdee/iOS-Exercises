//
//  PauseScreenViewController.h
//  CustomDelegates
//
//  Created by Josh Dee on 10/13/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol PauseScreenViewControllerDelegate <NSObject>
-(void)pauseGameDelegateMethod;

@end

@interface PauseScreenViewController : UIViewController
@property (weak, nonatomic) id <PauseScreenViewControllerDelegate> delegate;
@end
