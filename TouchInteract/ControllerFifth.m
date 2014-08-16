//
//  ControllerFifth.m
//  TouchInteract
//
//  Created by Rahul on 14/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "ControllerFifth.h"

@interface ControllerFifth ()
@property(nonatomic, strong) UIButton *openDrawerButton;
@end

@implementation ControllerFifth

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
