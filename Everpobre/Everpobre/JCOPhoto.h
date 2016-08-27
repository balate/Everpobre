#import "_JCOPhoto.h"
@import UIKit;

@interface JCOPhoto : _JCOPhoto
// Custom logic goes here.
@property(nonatomic,strong) UIImage *image;

+(instancetype) photoWithImage:(UIImage *)image
                       context:(NSManagedObjectContext *)context;
@end
