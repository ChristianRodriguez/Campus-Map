//
//  MC3ViewController.h
//  Campus Map
//
//  Created by Christian Rodriguez on 2/18/13.
//  Copyright (c) 2013 MobileDevelopmentCore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <iAd/iAd.h>
#include "SecondViewController.h"

@interface MC3ViewController : UIViewController
/*
 ad banner
<ADBannerViewDelegate>{
    ADBannerView * bannerview;
    
}

 
 
 */
- (IBAction)showinfo:(id)sender;

@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
//@property (weak, nonatomic) IBOutlet MKMapView *mapView;



/*
 Banner view code
 @property (nonatomic, retain)IBOutlet ADBannerView * bannerview;
*/
@end
