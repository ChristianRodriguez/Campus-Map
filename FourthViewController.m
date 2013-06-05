//
//  FourthViewController.m
//  Campus Map
//
//  Created by Christian Rodriguez on 4/6/13.
//  Copyright (c) 2013 MobileDevelopmentCore. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

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
    NSURL * myURL2 = [NSURL URLWithString:@"http://www.mc3.edu/aboutUs/newsEvents/in-the-news.aspx"];
    
    NSURLRequest * myRequest = [NSURLRequest requestWithURL:myURL2];
    
    [myWebView2 loadRequest:myRequest];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
