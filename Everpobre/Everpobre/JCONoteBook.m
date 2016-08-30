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


@end
