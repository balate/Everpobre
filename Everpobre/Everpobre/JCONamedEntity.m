#import "JCONamedEntity.h"

@interface JCONamedEntity ()

+(NSArray *)observableKeyNames;

@end

@implementation JCONamedEntity

#pragma mark - Class methods
+(NSArray *)observableKeyNames{
    return @[@"name",@"creationDate"];
}

#pragma mark -KVO
//Observamos cualquier de cuaquier propiedad de notebook
-(void) setupKVO{
    

    for (NSString *key in [[self class] observableKeyNames]){
        
        [self addObserver:self forKeyPath:key
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:NULL];
    }
    
}

//nos damos de baja del observer
-(void)tearDownKVO{
    
    for (NSString *key in [[self class] observableKeyNames]){
        
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

