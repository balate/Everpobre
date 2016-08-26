#import "JCONote.h"

@interface JCONote ()

// Private interface goes here.

@end

@implementation JCONote

// Custom logic goes here.

+(instancetype) noteWhitNane:(NSString *)name
                    notebook:(JCONoteBook *)notebook
                     context:(NSManagedObjectContext *)context{

    JCONote *note = [NSEntityDescription insertNewObjectForEntityForName:[JCONote entityName] inManagedObjectContext:context];
    
    note.creationDate = [NSDate date];
    note.modificationDate =  [NSDate date];
    note.notebook = notebook;
    
    return note;
}

@end
