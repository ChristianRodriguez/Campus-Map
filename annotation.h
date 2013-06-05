//
//  annotation.h
//  Campus Map
//
//  Created by Christian Rodriguez on 2/18/13.
//  Copyright (c) 2013 MobileDevelopmentCore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface annotation : NSObject <MKAnnotation>

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString * title;
@property (nonatomic, copy) NSString * subtitle;





@end
