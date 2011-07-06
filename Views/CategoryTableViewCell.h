/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
#import <UIKit/UIKit.h>
#import "PRPSmartTableViewCell.h"

@interface CategoryTableViewCell : PRPSmartTableViewCell {}

@property (nonatomic, retain) UIImageView *firstImageView;
@property (nonatomic, retain) UIImageView *secondImageView;
@property (nonatomic, retain) UIImageView *thirdImageView;
@property (nonatomic, retain) UIImageView *fourthImageView;
@property (nonatomic, retain) UILabel     *mainLabel;

@end