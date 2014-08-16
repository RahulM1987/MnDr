//
//  ControllerFouth.h
//  TouchInteract
//
//  Created by Rahul on 14/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICSDrawerController.h"
#import <MapKit/MapKit.h>

@interface ControllerFouth : UIViewController <ICSDrawerControllerChild,ICSDrawerControllerPresenting,MKMapViewDelegate,MKAnnotation>

@property(nonatomic, weak) ICSDrawerController *drawer;

@property (strong, nonatomic) IBOutlet MKMapView *map;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segment;

@end
