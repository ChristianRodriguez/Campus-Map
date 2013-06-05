//
//  MC3ViewController.m
//  Campus Map
//
//  Created by Christian Rodriguez on 2/18/13.
//  Copyright (c) 2013 MobileDevelopmentCore. All rights reserved.
//

#import "MC3ViewController.h"
#import "annotation.h"


@interface MC3ViewController ()


@end

//Center campus coordinates
#define MONTCO_LATITUDE 40.176342;
#define MONTCO_LONGITUDE -75.275619;


//ATC coordinates
#define ATC_LATITUDE 40.176939;
#define ATC_LONGITUDE -75.275939;



//Parkhouse coordinates and annotations
#define PARK_LATITUDE 40.176644;
#define PARK_LONGITUDE -75.277178;


//Science Center coordinates
#define SCIENCE_LATITUDE 40.176615;
#define SCIENCE_LONGITUDE -75.274389;

//College Hall
#define HALL_LATITUDE 40.175533;
#define HALL_LONGITUDE -75.275902;

//Gymnasium
#define GYM_LATITUDE 40.172045;
#define GYM_LONGITUDE 75.275965;






//Span measured in degrees, zooms into 110%
#define THE_SPAN 0.002f;



@implementation MC3ViewController
@synthesize myMapView;
//@synthesize bannerview;

/*
 ad banner
- (void)bannerViewDidLoadAd:(ADBannerView *)banner{
    [bannerview setHidden:NO];
    NSLog(@"AD IS SHOWING");
    
}


- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    [bannerview setHidden:YES];
    NSLog(@"AD IS HIDDEN");
    
}

*/
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //creates a region
    MKCoordinateRegion myRegion;
    
    //define the center
    CLLocationCoordinate2D center;
    center.latitude = MONTCO_LATITUDE;
    center.longitude = MONTCO_LONGITUDE;
    
    //creates span
    MKCoordinateSpan span;
    span.latitudeDelta = THE_SPAN;
    span.longitudeDelta = THE_SPAN;
    
    //sets region center
    myRegion.center = center;
    myRegion.span = span;
    
    //set our mapview
    [myMapView setRegion:myRegion animated:YES];
    
    
    
    
    //Annotation
    
    NSMutableArray * locations = [[NSMutableArray alloc] init];
    CLLocationCoordinate2D location;
    annotation * myAnn;
    
    //ATC annotation
    myAnn = [[annotation alloc] init];
    location.latitude = ATC_LATITUDE;
    location.longitude = ATC_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"Advanced Technology Center";
    myAnn.subtitle = @"Hours of Operation: 8am - 9pm";
    [locations addObject:myAnn];
    
    
    //Parkhouse annotation
    myAnn = [[annotation alloc] init];
    location.latitude = PARK_LATITUDE;
    location.longitude = PARK_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"Park House";
    myAnn.subtitle = @"Hours of Operation: 8am - 9pm";
    [locations addObject:myAnn];
    
    //Science center annotation
    myAnn = [[annotation alloc] init];
    location.latitude = SCIENCE_LATITUDE;
    location.longitude = SCIENCE_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"Science Center";
    myAnn.subtitle = @"Hours of Operation: 8am - 9pm";
    [locations addObject:myAnn];
    
    
    
    //College hall annotation
    myAnn = [[annotation alloc] init];
    location.latitude = HALL_LATITUDE;
    location.longitude = HALL_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"College Hall";
    myAnn.subtitle = @"Hours of Operation: 8am - 9pm";
    [locations addObject:myAnn];
   

    
    //Gymnasium annotation
    myAnn = [[annotation alloc] init];
    location.latitude = GYM_LATITUDE;
    location.longitude = GYM_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"Gymnasium";
    myAnn.subtitle = @"Hours of Operation: 5am - 10pm";
    [locations addObject:myAnn];


    
    
    
    /* Use as a reference when looking to create single annotation
    
    //1. Create coordinate for use with the annotation
    CLLocationCoordinate2D montcoLocation;
    montcoLocation.latitude = MONTCO_LATITUDE;
    montcoLocation.longitude = MONTCO_LONGITUDE;
    
    annotation * myAnnotation = [annotation alloc];
    myAnnotation.coordinate = montcoLocation;
    myAnnotation.title = @"College Hall";
    myAnnotation.subtitle = @"Hours of Operation: 8am - 5pm";
    
    [self.myMapView addAnnotation:myAnnotation];
    
     */
    
    
    [self.myMapView addAnnotations:locations];
    //Adds title to map
    self.title = @"Campus Map";

   /*
    ad banner
    bannerview.delegate = self;
    
    //add hidden to avoid white strip from showing on app if not loaded right away.
    [bannerview setHidden:YES];
    */
}
    //creates callout for annotations
-(MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    MKPinAnnotationView *MyPin =[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"current"];
    // adds color to pin
    MyPin.pinColor = MKPinAnnotationColorGreen;
    
    UIButton *advertButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    if ([[annotation title] isEqualToString:@"Advanced Technology Center"]) {
        [advertButton addTarget:self action:@selector(ATCClicked:) forControlEvents:UIControlEventTouchUpInside];
     }
    
    if ([[annotation title] isEqualToString:@"Park House"]) {
        [advertButton addTarget:self action:@selector(ParkHouseClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    if ([[annotation title] isEqualToString:@"Science Center"]) {
        [advertButton addTarget:self action:@selector(ScienceCenterClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    if ([[annotation title] isEqualToString:@"College Hall"]) {
        [advertButton addTarget:self action:@selector(CollegeHallClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    if ([[annotation title] isEqualToString:@"Gymnasium"]) {
        [advertButton addTarget:self action:@selector(GymnasiumClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    
    MyPin.rightCalloutAccessoryView = advertButton;
    MyPin.draggable = NO;
    MyPin.highlighted = YES;
    MyPin.animatesDrop = YES;
    MyPin.canShowCallout = YES;
    
    return MyPin;
    
}
 
// NS LOG for each annotation.
-(void) ATCClicked: (id)sender {
    NSLog(@"ATC Clicked");
}


-(void) ParkHouseClicked: (id)sender {
    NSLog(@"Park House Clicked");
}

-(void) ScienceCenterClicked: (id)sender {
    NSLog(@"Science Center Clicked");
}

-(void) CollegeHallClicked: (id)sender {
    NSLog(@"College Hall Clicked");
}

-(void) GymnasiumClicked: (id)sender {
    NSLog(@"GYM Clicked");
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}



- (IBAction)showinfo:(id)sender {
    //create InfoViewController object
    SecondViewController * info = [[SecondViewController alloc] init];
    
    //define our transition style
    info.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    //present
    [self presentViewController:info animated:YES completion:NULL];
    
}
@end
