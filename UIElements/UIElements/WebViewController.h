//
//  WebViewController.h
//  UIElements
//
//  Created by Josh Dee on 10/13/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<NSURLConnectionDelegate>
{
NSMutableData *_responseData;
}
@property (strong, nonatomic) IBOutlet UIWebView *webViewController;

@end
