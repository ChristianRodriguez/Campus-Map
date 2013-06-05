//
//  ThirdViewController.m
//  Campus Map
//
//  Created by Christian Rodriguez on 3/28/13.
//  Copyright (c) 2013 MobileDevelopmentCore. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
    
    // Allows webview and proccess requests
    NSURL * myURL = [NSURL URLWithString:@"https://mail.google.com"];
    
    NSURLRequest * myRequest = [NSURLRequest requestWithURL:myURL];
    
    [mywebView loadRequest:myRequest];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
