// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JCOPhoto.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class JCONote;

@interface JCOPhotoID : NSManagedObjectID {}
@end

@interface _JCOPhoto : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JCOPhotoID *objectID;

@property (nonatomic, strong) NSData* imageData;

@property (nonatomic, strong) JCONote *notes;

@end

@interface _JCOPhoto (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitiveImageData;
- (void)setPrimitiveImageData:(NSData*)value;

- (JCONote*)primitiveNotes;
- (void)setPrimitiveNotes:(JCONote*)value;

@end

@interface JCOPhotoAttributes: NSObject 
+ (NSString *)imageData;
@end

@interface JCOPhotoRelationships: NSObject
+ (NSString *)notes;
@end

NS_ASSUME_NONNULL_END
