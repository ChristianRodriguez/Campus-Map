//
//  SecondViewController.m
//  Campus Map
//
//  Created by Christian Rodriguez on 2/22/13.
//  Copyright (c) 2013 MobileDevelopmentCore. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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

- (IBAction)dismissViewController:(id)sender {
    
    //dismisses viewcontroller takes you back to campus map.
    [self dismissViewControllerAnimated:YES completion:NULL];

}
@end
