//
//  MC3AppDelegate.m
//  Campus Map
//
//  Created by Christian Rodriguez on 2/18/13.
//  Copyright (c) 2013 MobileDevelopmentCore. All rights reserved.
//

#import "MC3AppDelegate.h"
#import "MC3ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@implementation MC3AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
  
     
    UITabBarController * tbc = [[UITabBarController alloc] initWithNibName:@"MC3ViewController_iPhone" bundle: [NSBundle mainBundle]];
    
    MC3ViewController * mc3 = [[MC3ViewController alloc] initWithNibName:@"MC3ViewController_iPhone" bundle:[NSBundle mainBundle ]];
    
   ThirdViewController * mc4 = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:[NSBundle mainBundle]];
    
   FourthViewController * mc5 = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:[NSBundle mainBundle]];
    
   
    
    // Adds title to tab bar items
    [mc3.tabBarItem setTitle:@"Map"];
    [mc4.tabBarItem setTitle:@"E-mail"];
    [mc5.tabBarItem setTitle:@""];
    // Adds customized image to tab bar items 
    mc3.tabBarItem.image = [UIImage imageNamed:@"07-map-marker.png"];
    mc4.tabBarItem.image = [UIImage imageNamed:@"40-inbox.png"];
    mc5.tabBarItem.image = [UIImage imageNamed:@"145-persondot.png"];
   
    
   [tbc setViewControllers:[NSArray arrayWithObjects:mc3, mc4, mc5, nil]];
    

    
    self.window.rootViewController = tbc;
    [self.window makeKeyAndVisible];
    return YES;
    
}

-(void)CustomAppearance
{
    //UIImage * customnavbar = [UIImage imageNamed:@" "];
    //[[UINavigationBar appearance] setBackgroundImage:<#(UIImage *)#>]
}





- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
