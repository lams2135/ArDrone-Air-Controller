//
//  AppDelegate.m
//  ARDrone
//
//  Created by Jeason on 01/10/2014.
//  Copyright (c) 2014 Jeason. All rights reserved.
//

#import "AppDelegate.h"
#import "DroneCommunicator.h"
#import "DroneCommunicator+Convenience.h"
#import "ViewController.h"
@interface AppDelegate ()

@property (nonatomic, strong) DroneCommunicator *communicator;
@property (nonatomic, strong) ViewController *vc;
@end



@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.vc = [[ViewController alloc] initWithNibName:nil bundle:nil];
    self.window.rootViewController = self.vc;

    [UIApplication sharedApplication].idleTimerDisabled = YES;

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application;
{
    [self.communicator land];
}

@end
