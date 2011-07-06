#import "RootViewController.h"
#import "CustomNavigationBar.h"
#import "TTTLocationFormatter.h"
#import "UIImageView+WebCache.h"

static TTTLocationFormatter *__locationFormatter;

@implementation RootViewController

@synthesize activityIndicatorView;
@synthesize tableViewData;



- (void)refresh:(id)sender{

}



-(void)refresh{

    [self loadCategoriesFromURL];

}
- (void)loadCategoriesFromURL {
    [self.activityIndicatorView startAnimating];
    self.navigationItem.rightBarButtonItem.enabled = NO;
    
    [ModelCategory categoriesWithURLString:@"/category/list/"  parameters:nil withBlock:^(NSArray *records) {
            //self.tableViewData = 
        
        
        self.tableViewData = records;
        [self.tableView reloadData];
        NSLog(@"%@",self.tableViewData);
         
    }];
        
    NSLog(@"%d",[self.tableViewData count]);
    
    
    [self.activityIndicatorView stopAnimating];
    self.navigationItem.rightBarButtonItem.enabled = YES;
 
}


+ (void)initialize {
    __locationFormatter = [[TTTLocationFormatter alloc] init];
    [__locationFormatter setUnitSystem:TTTImperialSystem];
}

- (id)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.tableViewData = [NSArray array];
    
    
    return self;
}

- (void)dealloc
{
    
    [tableViewData release];
    [activityIndicatorView release];
    [super dealloc];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
  
    self.title = @"Pon";
    self.tableView.rowHeight = 120.0;
//
//    tableViewData = [[NSArray arrayWithObjects:
//                      [NSDictionary dictionaryWithObjectsAndKeys:@"Instagram", @"title", @"InstagramViewController", @"class", @"InstagramIcon.png", @"image", nil],
//                      [NSDictionary dictionaryWithObjectsAndKeys:@"Reeder", @"title", @"ReederViewController", @"class", @"reedericon.png", @"image", nil],
//                      [NSDictionary dictionaryWithObjectsAndKeys:@"DailyBooth", @"title", @"DailyBoothViewController", @"class", @"DailyBoothIcon", @"image", nil], nil] retain];
    
    
    self.activityIndicatorView = [[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite] autorelease];
    self.activityIndicatorView.hidesWhenStopped = YES;
    self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc] initWithCustomView:self.activityIndicatorView] autorelease];
    
//    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refresh:)] autorelease];
    self.navigationItem.rightBarButtonItem.enabled = NO;
    
    [self.navigationController.navigationBar setTintColor:[UIColor darkGrayColor]];
     
    [self refresh];
}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation { 
    return UIInterfaceOrientationPortrait; 
} 



-(void)willAppearIn:(UINavigationController *)navigationController
{
  // Reset the title to Home in case it got changed by the ReederViewController
  self.navigationController.navigationBar.backItem.title = @"奖品分类";
  CustomNavigationBar* customNavigationBar = (CustomNavigationBar*)navigationController.navigationBar;
  // Clear the tint color
  customNavigationBar.tintColor = nil;
  // Clear the background
  [customNavigationBar clearBackground];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return tableViewData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil)
//        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
//    
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    //cell.textLabel.text = [[tableViewData objectAtIndex:indexPath.row] objectForKey:@"name"];
//    
//    cell.textLabel.text = [[tableViewData objectAtIndex:indexPath.row] name];
//    
//      NSLog(@"%@",[tableViewData objectAtIndex:indexPath.row]);
//    //NSLog(@"%@",[tableViewData objectAtIndex:indexPath.row]);
   // cell.imageView.image = [UIImage imageNamed:[[tableViewData objectAtIndex:indexPath.row] objectForKey:@"image"]];

    CategoryTableViewCell *cell = [CategoryTableViewCell 
                                  cellForTableView:tableView];
    
    ModelCategory* ca =  [self.tableViewData objectAtIndex:indexPath.row];
    cell.mainLabel.text = ca.name;
    
    NSArray* arr = ca.hot_pics_urls;    
    
    [cell.firstImageView setImageWithURL:[NSURL URLWithString:[arr objectAtIndex:0]]
                                         placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    [cell.secondImageView setImageWithURL:[NSURL URLWithString:[arr objectAtIndex:1]]
                        placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    [cell.thirdImageView setImageWithURL:[NSURL URLWithString:[arr objectAtIndex:2]]
                        placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    [cell.fourthImageView setImageWithURL:[NSURL URLWithString:[arr objectAtIndex:3]]
                        placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     [tableView deselectRowAtIndexPath:indexPath animated:YES];
//  NSString* class = [[tableViewData objectAtIndex:indexPath.row] objectForKey:@"class"];
//  Class detailClass = NSClassFromString(class);
//  UIViewController* detailViewController = [[[detailClass alloc] initWithNibName:@"BaseViewController" bundle:nil] autorelease];
//  detailViewController.title = [[tableViewData objectAtIndex:indexPath.row] objectForKey:@"name"];
    
  //[self.navigationController pushViewController:detailViewController animated:YES];
}



@end

