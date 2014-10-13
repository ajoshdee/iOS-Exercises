//
//  CoreLocationViewController.m
//  UIElements
//
//  Created by Josh Dee on 10/13/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "CoreLocationViewController.h"
#import <MapKit/MapKit.h>
#define METERS_PER_MILE 1609.344
@interface CoreLocationViewController ()

@end

@implementation CoreLocationViewController

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
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    [self.locationManager startUpdatingLocation];
    
    self.locationManager.delegate = self;
    self.location = [[CLLocation alloc] init];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    
    self.location = locations.lastObject;
    self.latitudeLabel.text = [NSString stringWithFormat:@"%f", self.location.coordinate.latitude];
    self.LongitudeLabel.text = [NSString stringWithFormat:@"%f", self.location.coordinate.longitude];
    MKCoordinateRegion viewRegion;
    
    viewRegion.center.longitude = self.location.coordinate.longitude;
    viewRegion.center.latitude = self.location.coordinate.latitude;
    viewRegion.span.latitudeDelta = 0.03;
    viewRegion.span.longitudeDelta = 0.03;
    [_mapView setRegion:viewRegion animated: YES];
}
@end
