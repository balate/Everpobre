#import "JCONoteBook.h"

@interface JCONoteBook ()

// Private interface goes here.

@end

@implementation JCONoteBook

// Custom logic goes here.

+(instancetype) notebookWithName:(NSString *)name
                         context:(NSManagedObjectContext *) context{
    
    JCONoteBook *nb = [NSEntityDescription insertNewObjectForEntityForName:[JCONoteBook entityName] inManagedObjectContext:context];
    
    nb.creationDate = [NSDate date];
    nb.modificationDate = [NSDate date];
    
    return nb;
    
}


@end
