//
//  ControllerFouth.m
//  TouchInteract
//
//  Created by Rahul on 14/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "ControllerFouth.h"

@interface ControllerFouth ()
@property(nonatomic, strong) UIButton *openDrawerButton;
@end

@implementation ControllerFouth

@synthesize map,segment,drawer,openDrawerButton;

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
    self.openDrawerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage * buttonimage = [UIImage imageNamed:@"app_drawer"];
    [self.openDrawerButton setImage:buttonimage forState:UIControlStateNormal];
    self.openDrawerButton.frame = CGRectMake(13,30, 32, 32);
    [self.openDrawerButton addTarget:self action:@selector(openDrawer:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.openDrawerButton];
    
  
   
    //self.view.backgroundColor = color(36,40,46,1);
    
    // Do any additional setup after loading the view, typically from a nib.
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
- (IBAction)segment:(id)sender
{
    
    if (self.segment.selectedSegmentIndex == 0)
    {
        self.map.mapType = MKMapTypeStandard;
    }
    if (self.segment.selectedSegmentIndex == 1)
    {
        self.map.mapType = MKMapTypeSatellite;
    }

    if (self.segment.selectedSegmentIndex == 2)
    {
        self.map.mapType = MKMapTypeHybrid;
    }
    
}

@end
