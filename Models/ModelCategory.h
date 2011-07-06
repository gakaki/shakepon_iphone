
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

typedef void (^AFRecordsBlock)(NSArray *records);

@interface ModelCategory : NSObject {

    NSString *_name;
    NSArray  *_hot_pics_urls;
    NSString *_category_id;
}

@property (nonatomic, retain)   NSArray *hot_pics_urls;
@property (nonatomic, copy)     NSString *name;
@property (nonatomic, copy)     NSString *category_id;

- (id)initWithAttributes:(NSDictionary *)attributes;


+ (void)categoriesWithURLString:(NSString *)urlString parameters:(NSDictionary *)parameters withBlock:(AFRecordsBlock)block;

@end
