#import "ModelCategory.h"
#import "CategoryTableViewCell.h"

@interface RootViewController : UITableViewController
{
  NSArray* tableViewData;
  UIActivityIndicatorView *activityIndicatorView;
}

@property (nonatomic, retain) NSArray *tableViewData;
@property (nonatomic, retain) UIActivityIndicatorView *activityIndicatorView;


- (void)loadCategoriesFromURL;
- (void)refresh:(id)sender;


@end
