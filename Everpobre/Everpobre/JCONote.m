#import "JCONote.h"

@interface JCONote ()

// Private interface goes here.

+(NSArray * ) observableKeyNames;

@end

@implementation JCONote

// Custom logic goes here.

+(NSArray *) observableKeyNames {

    return @[@"name", @"creationDate",@"notebook",@"photo"];
}

+(instancetype) noteWhitNane:(NSString *)name
                    notebook:(JCONoteBook *)notebook
                     context:(NSManagedObjectContext *)context{

    JCONote *note = [NSEntityDescription insertNewObjectForEntityForName:[JCONote entityName] inManagedObjectContext:context];
    
    note.creationDate = [NSDate date];
    note.modificationDate =  [NSDate date];
    note.notebook = notebook;
    
    return note;
}


#pragma mark -KVO

//Observamos cualquier de cuaquier propiedad de notebook
-(void) setupKVO{
    
    for (NSString *key in [JCONote observableKeyNames]) {
        
        [self addObserver:self forKeyPath:key
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:NULL];
    }
    
}

//nos damos de baja del observer
-(void)tearDownKVO{
    
    for (NSString *key in [JCONote observableKeyNames]){
        
        [self removeObserver:self
                  forKeyPath:key];
    }
}

//modifica fecha de modificacion si hay algun cambio
-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary<NSString *,id> *)change
                      context:(void *)context{
    
    self.modificationDate = [NSDate date];
    
}


#pragma mark - LifeCycle
//ciclo de vida de NSManagedObject
-(void) awakeFromInsert{
    
    [super awakeFromInsert];
    [self setupKVO];
    
}

//creaccion
-(void)awakeFromFetch{
    
    [super awakeFromFetch];
    [self setupKVO];
}


//destrucción
-(void) willTurnIntoFault{
    
    [super willTurnIntoFault];
    [self tearDownKVO];
}


@end
