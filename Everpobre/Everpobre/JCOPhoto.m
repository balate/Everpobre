#import "JCOPhoto.h"

@interface JCOPhoto ()

// Private interface goes here.

@end

@implementation JCOPhoto


#pragma mark - Properties
//Setter
-(void) setImage:(UIImage *) image{

    //sincronizar con imageData
    self.imageData =UIImagePNGRepresentation(image);
}

//Getter
-(UIImage *)image {

    return [UIImage imageWithData:self.imageData];
    
}


#pragma mark - class method
+(instancetype) photoWithImage:(UIImage *)image
                       context:(NSManagedObjectContext *)context{

    JCOPhoto *p = [NSEntityDescription insertNewObjectForEntityForName:[JCOPhoto entityName] inManagedObjectContext:context];
    
    p.imageData = UIImageJPEGRepresentation(image, 0.9);
    
    return p;
}



@end
