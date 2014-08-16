//
//  ControllerThird.m
//  TouchInteract
//
//  Created by Rahul on 13/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "ControllerThird.h"

@interface ControllerThird ()
@property(nonatomic, strong) UIButton *openDrawerButton;
@end

@implementation ControllerThird

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
    
    self.openDrawerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage * buttonimage = [UIImage imageNamed:@"app_drawer"];
    [self.openDrawerButton setImage:buttonimage forState:UIControlStateNormal];
    self.openDrawerButton.frame = CGRectMake(13,30, 32, 32);
    [self.openDrawerButton addTarget:self action:@selector(openDrawer:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.openDrawerButton];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - ICSDrawerControllerPresenting

- (void)drawerControllerWillOpen:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = NO;
}

- (void)drawerControllerDidClose:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = YES;
}

- (void)openDrawer:(id)sender
{
    [self.drawer open];
}

@end
