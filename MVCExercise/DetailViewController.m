//
//  DetailViewController.m
//  MVCExercise
//
//  Created by Josh Dee on 10/9/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (retain, nonatomic) IBOutlet UILabel *itemTitle;
@property (retain, nonatomic) IBOutlet UILabel *description;
@property (retain, nonatomic) IBOutlet UILabel *itemCategory;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.itemTitle setText:[self.itemmodel itemTitle]];
    [self.description setText:[self.itemmodel description]];
    [self.itemCategory setText:[self.itemmodel itemCategory]];
}

-(void)dealloc
{
    NSLog(@"Deallocating DetailViewController");
    _itemmodel = nil;
    
    [_itemTitle release];
    [_description release];
    [_itemCategory release];
    [super dealloc];
}

@end
