//
//  RasiedCenterTabBarController.h
//  ProgramaticCreateTabBarAndNavigation
//
//  Created by Gakaki on 11-7-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RasiedCenterTabBarController : UITabBarController {
    
}

// Create a view controller and setup it's tab bar item with a title and image
-(UIViewController*) viewControllerWithTabTitle:(NSString*)title image:(UIImage*)image;

// Create a custom UIButton and add it to the center of our tab bar
-(void) addCenterButtonWithImage:(UIImage*)buttonImage highlightImage:(UIImage*)highlightImage;


@end
