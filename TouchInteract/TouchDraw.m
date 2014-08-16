//
//  TouchDraw.m
//  TouchInteract
//
//  Created by Rahul on 12/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "TouchDraw.h"
#import <QuartzCore/QuartzCore.h>
#import "MyLineDrawingView.h"
#import "LeftController.h"

@interface TouchDraw ()


@property(nonatomic, strong) UIButton *openDrawerButton;

@end

@implementation TouchDraw

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
    
    UIImage *image = [UIImage imageNamed:@"friendster"];
    imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(140, 420, 50.0f, 50.0f);
    
    [self.animateview addSubview:imageView];
    
}


//- (void)viewWillAppear:(BOOL)animated
//{
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:8.0f];
//    [UIView setAnimationDelegate:self];
//    imageView.frame = CGRectMake(240.0f, 300.0f, 60.0f, 60.0f);
//    [UIView commitAnimations];
//    [self animatestart];
//}
//
//
//- (void)animatestart
//{
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:3.0f];
//    [UIView setAnimationDelegate:self];
//    imageView.frame = CGRectMake(240.0f, 300.0f, 60.0f, 60.0f);
//    [UIView commitAnimations];
//    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:3.0f];
//    [UIView setAnimationDelegate:self];
//    imageView.frame = CGRectMake(240.0f, 400.0f, 70.0f, 70.0f);
//    [self animatestart];
//}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clearview: (id)sender
{

    [self viewDidLoad];

}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return  UIStatusBarStyleLightContent;
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
