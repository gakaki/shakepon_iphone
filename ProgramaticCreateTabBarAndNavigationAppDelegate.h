//
//  ProgramaticCreateTabBarAndNavigationAppDelegate.h
//  ProgramaticCreateTabBarAndNavigation
//
//  Created by Gakaki on 11-7-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RasiedCenterTabBarController.h"

@interface ProgramaticCreateTabBarAndNavigationAppDelegate : NSObject <UIApplicationDelegate> {
    RasiedCenterTabBarController* tab;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) RasiedCenterTabBarController *tab;


@end
