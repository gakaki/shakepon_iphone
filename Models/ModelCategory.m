
#import "ModelCategory.h"
#import "AFShakePonAPIClient.h"

@implementation ModelCategory

@synthesize name = _name;
@synthesize hot_pics_urls = _hot_pics_urls;
@synthesize category_id = _category_id;

- (id)initWithAttributes:(NSDictionary *)attributes {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.category_id    = [attributes valueForKeyPath:@"id"];       //分类 id
    self.name           = [attributes valueForKeyPath:@"name"];     //分类名
    self.hot_pics_urls  = [attributes valueForKeyPath:@"hot"];      //分类下的热门产品图片 array

    return self;
}

- (void)dealloc {
    [_name release];
    [_hot_pics_urls release];
    [_category_id release];
    [super dealloc];
}


+ (void)categoriesWithURLString:(NSString *)urlString parameters:(NSDictionary *)parameters withBlock:(AFRecordsBlock)block {
    NSDictionary *mutableParameters = [NSMutableDictionary dictionaryWithDictionary:parameters];
	    
    [[AFShakePonAPIClient sharedClient] getPath:urlString parameters:mutableParameters callback:[AFHTTPOperationCallback callbackWithSuccess:^(NSURLRequest *request, NSHTTPURLResponse *response, NSDictionary *data) {
        
		if (block) {
            
            NSLog(@"%@",data);
            
            NSMutableArray *mutableRecords = [NSMutableArray array];
            for (NSDictionary *attributes in [data valueForKeyPath:@"category_lists"]) {
                ModelCategory  *category = [[[ModelCategory alloc] initWithAttributes:attributes] autorelease];
                [mutableRecords addObject:category];
            }
          
            
            block([NSArray arrayWithArray:mutableRecords]);
        }
	}]];
}

@end
