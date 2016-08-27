#import "JCOPhoto.h"

@interface JCOPhoto ()

// Private interface goes here.

@end

@implementation JCOPhoto

@synthesize image = _image;

#pragma mark - Properties

//Setter
-(void) setImage:(UIImage *) image{

    //Guardar en la variable de instancia
    _image = image;


    //sincronizar con imageData
    self.imageData =UIImagePNGRepresentation(image);
}

//Getter
//Se va hacer con la tecnica de carga perezosa (reduciendo el tiempo de memoria en el tiempo)
-(UIImage *)image {

    if(_image ==nil){
    
        _image = [UIImage imageWithData:self.imageData];
        
    }
    return _image;
}





#pragma mark - class method
+(instancetype) photoWithImage:(UIImage *)image
                       context:(NSManagedObjectContext *)context{

    JCOPhoto *p = [NSEntityDescription insertNewObjectForEntityForName:[JCOPhoto entityName] inManagedObjectContext:context];
    
    p.imageData = UIImagePNGRepresentation(image);
    
    return p;

}
@end
