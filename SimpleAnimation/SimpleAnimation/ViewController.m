//
//  ViewController.m
//  SimpleAnimation
//
//  Created by Josh Dee on 10/8/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSString *path = [[NSBundle mainBundle]
                          pathForResource:@"audio" ofType:@"aifc"];
        audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:
                       [NSURL fileURLWithPath:path] error:NULL];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Load images
    NSArray *imageNames = @[@"1.png", @"2.png", @"3.png", @"4.png",
                            @"5.png", @"6.png", @"7.png", @"8.png"];
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    for (int i = 0; i < imageNames.count; i++) {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }
    
    // Normal Animation
    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 95, 70, 150)];
    animationImageView.animationImages = images;
    animationImageView.animationDuration = 0.5;
    
    [self.view addSubview:animationImageView];
    [animationImageView startAnimating];
    [animationImageView release];
    
    // Slow motion animation
    UIImageView *slowAnimationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(160, 95, 70, 150)];
    slowAnimationImageView.animationImages = images;
    slowAnimationImageView.animationDuration = 5;
    
    [self.view addSubview:slowAnimationImageView];
    [slowAnimationImageView startAnimating];
    [slowAnimationImageView release];
    [images release];
    
    [audioPlayer play];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [audioPlayer release];
    [super dealloc];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
