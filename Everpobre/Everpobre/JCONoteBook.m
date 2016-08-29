#import "JCONoteBook.h"

@interface JCONoteBook ()

// Private interface goes here.
+(NSArray *)observableKeyNames;

@end

@implementation JCONoteBook

// Custom logic goes here.
+(NSArray *)observableKeyNames{

    return @[@"creationDate",@"name", @"notes"];
}

+(instancetype) notebookWithName:(NSString *)name
                         context:(NSManagedObjectContext *) context{
    
    JCONoteBook *nb = [NSEntityDescription insertNewObjectForEntityForName:[JCONoteBook entityName] inManagedObjectContext:context];
    
    nb.creationDate = [NSDate date];
    nb.modificationDate = [NSDate date];

    
    return nb;
    
}


#pragma mark -KVO

//Observamos cualquier de cuaquier propiedad de notebook
-(void) setupKVO{

    NSArray *keys = @[@"creationDate",@"name", @"notes"];
    for (NSString *key in keys) {
        
        [self addObserver:self forKeyPath:key
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:NULL];
    }

}

//nos damos de baja del observer
-(void)tearDownKVO{

    for (NSString *key in [JCONoteBook observableKeyNames]){
    
        [self removeObserver:self forKeyPath:key];
    }
}

//modifica fecha de modificacion si hay algun cambio
-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary<NSString *,id> *)change
                      context:(void *)context{
    
    self.modificationDate = [NSDate date];

}





@end
