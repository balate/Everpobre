#import "JCOPhoto.h"

@interface JCOPhoto ()

// Private interface goes here.

@end

@implementation JCOPhoto


+(instancetype) photoWithImage:(UIImage *)image
                       context:(NSManagedObjectContext *)context{

    JCOPhoto *p = [NSEntityDescription insertNewObjectForEntityForName:[JCOPhoto entityName] inManagedObjectContext:context];
    
    p.imageData = UIImagePNGRepresentation(image);
    
    return p;

}
@end
