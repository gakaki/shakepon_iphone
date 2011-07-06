/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
#import "CategoryTableViewCell.h"
#import <QuartzCore/QuartzCore.h>


@implementation CategoryTableViewCell

@synthesize firstImageView,secondImageView,thirdImageView,fourthImageView,mainLabel;

- (void)dealloc {
    [firstImageView release], firstImageView = nil;
    [secondImageView release], secondImageView = nil;
    [thirdImageView release], thirdImageView = nil;
    [fourthImageView release], fourthImageView = nil;

    [mainLabel release], mainLabel = nil;

    [super dealloc];
}


- (id)initWithCellIdentifier:(NSString *)cellID {
    if ((self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID])) {
        
        self.textLabel.textColor = [UIColor darkGrayColor];
        self.textLabel.numberOfLines = 2;
        
        self.detailTextLabel.textColor = [UIColor grayColor];
        
        self.selectionStyle = UITableViewCellSelectionStyleGray;
        

        
        
        
        UIImage *first_image    = [UIImage imageNamed:@"placeholder.png"];
        UIImage *second_image   = [UIImage imageNamed:@"placeholder.png"];
        UIImage *third_image    = [UIImage imageNamed:@"placeholder.png"];
        UIImage *four_image     = [UIImage imageNamed:@"placeholder.png"];

        firstImageView  = [[UIImageView alloc] initWithImage:first_image];
        secondImageView = [[UIImageView alloc] initWithImage:second_image];
        thirdImageView  = [[UIImageView alloc] initWithImage:third_image];
        fourthImageView = [[UIImageView alloc] initWithImage:four_image];
        
        CGRect iconFrame = CGRectMake( 5, 36 , 72,72);
        firstImageView.frame = iconFrame;
        
        iconFrame.origin.x = CGRectGetMaxX(iconFrame) + 2;
        secondImageView.frame = iconFrame;
        
        iconFrame.origin.x = CGRectGetMaxX(iconFrame) + 2;
        thirdImageView.frame = iconFrame;
        
        iconFrame.origin.x = CGRectGetMaxX(iconFrame) + 2;
        fourthImageView.frame = iconFrame;
        
        
        firstImageView.layer.cornerRadius = 5.0;
        firstImageView.layer.masksToBounds = YES;
        firstImageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        firstImageView.layer.borderWidth = 0.5;
        
    

        secondImageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        secondImageView.layer.borderWidth = 0.5;
        secondImageView.layer.cornerRadius = 5.0;
        secondImageView.layer.masksToBounds = YES;
        
    
        thirdImageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        thirdImageView.layer.borderWidth = 0.5;        
        thirdImageView.layer.cornerRadius = 5.0;
        thirdImageView.layer.masksToBounds = YES;
        
      
        fourthImageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        fourthImageView.layer.borderWidth = 0.5;        
        fourthImageView.layer.cornerRadius = 5.0;
        fourthImageView.layer.masksToBounds = YES;
               
        [self.contentView addSubview:firstImageView];
        [self.contentView addSubview:secondImageView];
        [self.contentView addSubview:thirdImageView];
        [self.contentView addSubview:fourthImageView];


        CGRect labelFrame = CGRectMake(5, 0, 180.0, 35.0);
        mainLabel = [[UILabel alloc] initWithFrame:labelFrame];
        mainLabel.font = [UIFont boldSystemFontOfSize:18.0];
        mainLabel.highlightedTextColor = [UIColor whiteColor];
        [self.contentView addSubview:mainLabel];
    }
    
    return self;
}

@end