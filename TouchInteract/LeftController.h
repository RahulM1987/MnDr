//
//  LeftController.h
//  TouchInteract
//
//  Created by Rahul on 13/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICSDrawerController.h"

@interface LeftController : UIViewController <ICSDrawerControllerChild,ICSDrawerControllerPresenting,UITableViewDataSource,UITableViewDelegate>
{
    NSArray * menu;
}

@property(nonatomic, weak) ICSDrawerController *drawer;
@property (strong, nonatomic) IBOutlet UITableView *tables;
@end
