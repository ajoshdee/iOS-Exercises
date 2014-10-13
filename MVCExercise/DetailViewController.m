//
//  DetailViewController.m
//  MVCExercise
//
//  Created by Josh Dee on 10/9/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *itemTitle;
@property (weak, nonatomic) IBOutlet UILabel *description;
@property (weak, nonatomic) IBOutlet UILabel *itemCategory;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.itemTitle setText:[self.itemmodel itemTitle]];
    [self.description setText:[self.itemmodel description]];
    [self.itemCategory setText:[self.itemmodel itemCategory]];
}


@end
