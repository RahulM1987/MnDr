//
//  LeftController.m
//  TouchInteract
//
//  Created by Rahul on 13/08/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "LeftController.h"
#import "TouchDraw.h"
#import "ControllerOne.h"
#import "ControllerSecond.h"
#import "ControllerThird.h"
#import "ControllerFouth.h"
#import "ControllerFifth.h"
#import "ControllerSixth.h"
#import "ControllerSeventh.h"
#import "ControllerEighth.h"

@interface LeftController ()
{
    TouchDraw * touch;
    ControllerOne * one;
    ControllerSecond * second;
    ControllerThird * third;
    ControllerOne * fourth;
    ControllerSecond * fifth;
    ControllerThird * sixth;
    ControllerSecond * seventh;
    ControllerThird * eighth;
}

@end

@implementation LeftController

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
    
    menu = @[@"Main",@"Twitter",@"Second",@"Third",@"Map",@"Fifth",@"Sixth",@"Seventh",@"Eight"];
    
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
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

- (void)drawerControllerDidOpen:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = YES;
}

- (void)drawerControllerWillClose:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = NO;
}

- (void)drawerControllerDidClose:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = YES;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return menu.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellidentifier = @"Cell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifier];
        
    cell.textLabel.text = [NSString stringWithFormat:@"%@ Controller",[menu objectAtIndex:indexPath.row]];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    }
    
    
    if (indexPath.row == 1) {
        UIImage * imagvw = [UIImage imageNamed:@"<#string#>"];
    }
    
    
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString * cellidentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];

    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifier];

    cell.textColor = [UIColor blackColor];
    if(indexPath.row == 0)
    {
        touch = [[TouchDraw alloc]initWithNibName:@"TouchDraw" bundle:nil];
        [self.drawer replaceCenterViewControllerWithViewController:touch];
       
    }
    if(indexPath.row == 1)
    {
        one = [[ControllerOne alloc]initWithNibName:@"ControllerOne" bundle:nil];
         [self.drawer replaceCenterViewControllerWithViewController:one];
    }
    if(indexPath.row == 2)
    {
        second = [[ControllerSecond alloc]initWithNibName:@"ControllerSecond" bundle:nil];
         [self.drawer replaceCenterViewControllerWithViewController:second];
    }
    if(indexPath.row == 3)
    {
        third = [[ControllerThird alloc]initWithNibName:@"ControllerThird" bundle:nil];
        [self.drawer replaceCenterViewControllerWithViewController:third];
        
    }
    if (indexPath.row == 4) {
        fourth = [[ControllerFouth alloc]initWithNibName:@"ControllerFouth" bundle:nil];
        [self.drawer replaceCenterViewControllerWithViewController:fourth];
    }
    if(indexPath.row == 5)
    {
        fifth = [[ControllerFifth alloc]initWithNibName:@"ControllerFifth" bundle:nil];
        [self.drawer replaceCenterViewControllerWithViewController:fifth];
    }
    if(indexPath.row == 6)
    {
        sixth = [[ControllerSixth alloc]initWithNibName:@"ControllerSixth" bundle:nil];
        [self.drawer replaceCenterViewControllerWithViewController:sixth];
    }
    if(indexPath.row == 7)
    {
        seventh = [[ControllerSeventh alloc]initWithNibName:@"ControllerSeventh" bundle:nil];
        [self.drawer replaceCenterViewControllerWithViewController:seventh];
    }
    if(indexPath.row == 8)
    {
        eighth = [[ControllerEighth alloc]initWithNibName:@"ControllerEighth" bundle:nil];
        [self.drawer replaceCenterViewControllerWithViewController:eighth];
    }

}


//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (indexPath.row %2) {
//        
//    }else
//    {
//        //cell.backgroundColor = [UIColor whiteColor];
//        //cell.textColor = [UIColor blueColor];
//        //cell.textColor = [UIColor colorWithRed:116 green:176 blue:232 alpha:0.0f];
//    }
//}


@end
