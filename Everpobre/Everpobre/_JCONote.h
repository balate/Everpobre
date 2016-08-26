// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JCONote.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

#import "JCONamedEntity.h"

NS_ASSUME_NONNULL_BEGIN

@class JCONoteBook;
@class JCOPhoto;

@interface JCONoteID : JCONamedEntityID {}
@end

@interface _JCONote : JCONamedEntity
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JCONoteID *objectID;

@property (nonatomic, strong, nullable) NSString* text;

@property (nonatomic, strong) JCONoteBook *notebook;

@property (nonatomic, strong, nullable) JCOPhoto *photo;

@end

@interface _JCONote (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;

- (JCONoteBook*)primitiveNotebook;
- (void)setPrimitiveNotebook:(JCONoteBook*)value;

- (JCOPhoto*)primitivePhoto;
- (void)setPrimitivePhoto:(JCOPhoto*)value;

@end

@interface JCONoteAttributes: NSObject 
+ (NSString *)text;
@end

@interface JCONoteRelationships: NSObject
+ (NSString *)notebook;
+ (NSString *)photo;
@end

NS_ASSUME_NONNULL_END
