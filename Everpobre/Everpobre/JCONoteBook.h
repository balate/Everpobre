#import "_JCONoteBook.h"

@interface JCONoteBook : _JCONoteBook
// Custom logic goes here.

+(instancetype) notebookWithName:(NSString *)name
                         context:(NSManagedObjectContext *) context;

@end
