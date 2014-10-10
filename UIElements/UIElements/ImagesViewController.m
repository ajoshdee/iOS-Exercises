//
//  ImagesViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/10/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "ImagesViewController.h"

@interface ImagesViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ImagesViewController
- (IBAction)resizeImage:(id)sender {
    self.image.frame = CGRectMake(self.image.frame.origin.x, self.image.frame.origin.y, [[UIImage imageNamed:@"images.png"] size].width, [[UIImage imageNamed:@"images.png"] size].height);
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
