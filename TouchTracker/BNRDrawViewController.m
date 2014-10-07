//
//  BNRDrawViewController.m
//  TouchTracker
//
//  Created by Josh Dee on 9/24/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "BNRDrawViewController.h"
#import "BNRDrawView.h"

@implementation BNRDrawViewController

- (void)loadView
{
    self.view = [[BNRDrawView alloc] initWithFrame:CGRectZero];
}

@end
