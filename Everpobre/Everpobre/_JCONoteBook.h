// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JCONoteBook.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

#import "JCONamedEntity.h"

NS_ASSUME_NONNULL_BEGIN

@class JCONote;

@interface JCONoteBookID : JCONamedEntityID {}
@end

@interface _JCONoteBook : JCONamedEntity
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JCONoteBookID *objectID;

@property (nonatomic, strong) NSSet<JCONote*> *notes;
- (NSMutableSet<JCONote*>*)notesSet;

@end

@interface _JCONoteBook (NotesCoreDataGeneratedAccessors)
- (void)addNotes:(NSSet<JCONote*>*)value_;
- (void)removeNotes:(NSSet<JCONote*>*)value_;
- (void)addNotesObject:(JCONote*)value_;
- (void)removeNotesObject:(JCONote*)value_;

@end

@interface _JCONoteBook (CoreDataGeneratedPrimitiveAccessors)

- (NSMutableSet<JCONote*>*)primitiveNotes;
- (void)setPrimitiveNotes:(NSMutableSet<JCONote*>*)value;

@end

@interface JCONoteBookRelationships: NSObject
+ (NSString *)notes;
@end

NS_ASSUME_NONNULL_END
