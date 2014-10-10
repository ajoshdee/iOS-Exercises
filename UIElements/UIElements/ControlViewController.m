//
//  ControlViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/10/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "ControlViewController.h"

@interface ControlViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UISwitch *showTextSwitch;

@end

@implementation ControlViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)switchPressedAction:(id)sender {
    if(self.showTextSwitch.on)
        
    {
        
        self.textLabel.text = @"Hello!";
        
    }
    
    else
        
    {
        
          self.textLabel.text = @"";
        
    }
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
