//
//  TouchDraw.h
//  TouchInteract
//
//  Created by Rahul on 12/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICSDrawerController.h"

@interface TouchDraw : UIViewController <ICSDrawerControllerChild,ICSDrawerControllerPresenting>
{
    UIBezierPath * path;
    UIImageView * imageView;
}

@property(nonatomic, weak) ICSDrawerController *drawer;
@property (strong, nonatomic) IBOutlet UILabel *labl;
@property (strong, nonatomic) IBOutlet UIView *animateview;

@end
