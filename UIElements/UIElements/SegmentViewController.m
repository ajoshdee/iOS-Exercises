//
//  SegmentViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/10/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "SegmentViewController.h"

@interface SegmentViewController ()
@property (weak, nonatomic) IBOutlet UIView *imageView;
@property (weak, nonatomic) IBOutlet UIView *detailView;
@property (weak, nonatomic) IBOutlet UIView *factsView;

@end

@implementation SegmentViewController
- (IBAction)segmentedValueChanged:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.factsView.hidden = YES;
            self.detailView.hidden = YES;
            self.imageView.hidden = NO;
            break;
        case 1:
            self.factsView.hidden = YES;
            self.detailView.hidden = NO;
            self.imageView.hidden = YES;
            break;
        case 2:
            self.factsView.hidden = NO;
            self.detailView.hidden = YES;
            self.imageView.hidden = YES;
            break;
            
        default:
            break;
    }

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
