//
//  ControllerOne.h
//  TouchInteract
//
//  Created by Rahul on 13/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICSDrawerController.h"
#import <Twitter/Twitter.h>

@interface ControllerOne : UIViewController  <ICSDrawerControllerChild,ICSDrawerControllerPresenting>

@property(nonatomic, weak) ICSDrawerController *drawer;


@property (strong, nonatomic) IBOutlet UIButton *tweet;

@end
