#import "_JCONote.h"

@interface JCONote : _JCONote
// Custom logic goes here.

+(instancetype) noteWhitNane:(NSString *)name
                    notebook:(JCONoteBook *)notebook
                     context:(NSManagedObjectContext *)context;

@end
