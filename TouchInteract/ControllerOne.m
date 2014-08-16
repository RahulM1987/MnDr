//
//  ControllerOne.m
//  TouchInteract
//
//  Created by Rahul on 13/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "ControllerOne.h"
#import <QuartzCore/QuartzCore.h>
#import "MyLineDrawingView.h"
#import "LeftController.h"


@interface ControllerOne ()
{
    ControllerOne * one;
}
@property(nonatomic, strong) UIButton *openDrawerButton;
@end

@implementation ControllerOne

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
    
    
    MyLineDrawingView *drawScreen=[[MyLineDrawingView alloc]initWithFrame:CGRectMake(0, 20, 748, 1004)];
    drawScreen.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:drawScreen];
    [super viewDidLoad];
    
    [self.view setMultipleTouchEnabled:YES];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(0, 524, 320, 44);
    [btn setTitle:@"Clear" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.font = [UIFont fontWithName:@"Helvitica Nue" size:20];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn addTarget:self action:@selector(clearview:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    
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

- (void)clearview: (id)sender
{
    [self viewDidLoad];
}
- (IBAction)tweet:(id)sender
{
    if ([TWTweetComposeViewController canSendTweet])
    {
        TWTweetComposeViewController *tweetSheet =
        [[TWTweetComposeViewController alloc] init];
        [tweetSheet setInitialText:
         @"Tweeting from iOS 5 By Tutorials! :)"];
	    [self presentModalViewController:tweetSheet animated:YES];
    }
    else
    {
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:@"Sorry"
                                  message:@"You can't send a tweet right now, make sure your device has an internet connection and you have                                  at least one Twitter account setup"
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles:nil];
        [alertView show];
    }
    
}

@end
