//
//  ProgramaticCreateTabBarAndNavigationAppDelegate.m
//  ProgramaticCreateTabBarAndNavigation
//
//  Created by Gakaki on 11-7-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "ProgramaticCreateTabBarAndNavigationAppDelegate.h"

@implementation ProgramaticCreateTabBarAndNavigationAppDelegate


@synthesize window,tab;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //nav1
    UIViewController* view = [[UIViewController alloc]init];
    view.title = @"Tab1";
    view.tabBarItem.image = [UIImage imageNamed:@"77-ekg.png"];
    view.navigationItem.title=@"Nav Title";
    
    UINavigationController* nav1 = [[UINavigationController alloc]initWithRootViewController:view];
    
    
    //nav2
    UIViewController* view2 = [[UIViewController alloc]init];
    view2.title = @"Tab2";
    view2.tabBarItem.image = [UIImage imageNamed:@"10-medical.png"];
    view2.navigationItem.title=@"Nav Title2";
    
    UINavigationController* nav2 = [[UINavigationController alloc]initWithRootViewController:view2];
    
    //nav3
    UIViewController* view3 = [[UIViewController alloc]init];
    view3.title = @"Tab3";
    view3.tabBarItem.image = [UIImage imageNamed:@"08-chat.png"];
    view3.navigationItem.title=@"Nav Title3";
    
    UINavigationController* nav3 = [[UINavigationController alloc]initWithRootViewController:view3];    


    
    //nav4
    UIViewController* view4 = [[UIViewController alloc]init];
    view4.title = @"Tab4";
    view4.tabBarItem.image = [UIImage imageNamed:@"04-squiggle"];
    view4.navigationItem.title=@"Nav Title4";
    
    UINavigationController* nav4 = [[UINavigationController alloc]initWithRootViewController:view4];
    
    
    //nav5
    UIViewController* view5 = [[UIViewController alloc]init];
    view5.title = @"Tab5";
    view5.tabBarItem.image = [UIImage imageNamed:@"102-walk"];
    view5.navigationItem.title=@"Nav Title5";
    
    UINavigationController* nav5 = [[UINavigationController alloc]initWithRootViewController:view5];
    
    
    self.tab =  [[[RasiedCenterTabBarController alloc]init] autorelease];
    [self.window addSubview:self.tab.view];
    
    
    NSLog(@"TAB RETAIN COUNT %d", [self.tab retainCount]);
    NSLog(@"TAB RETAIN COUNT %d", [nav1 retainCount]);
    
    
    [view release];
    [view2 release];
    [view3 release];
    [view4 release];
    [view5 release];
    [nav1 release];
    [nav2 release];
    [nav3 release];
    [nav4 release];
    [nav5 release];    
    
    
    
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)dealloc
{
    [tab release];
    [window release];
    [super dealloc];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}



@end
