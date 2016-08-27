// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JCONamedEntity.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface JCONamedEntityID : NSManagedObjectID {}
@end

@interface _JCONamedEntity : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) JCONamedEntityID *objectID;

@property (nonatomic, strong) NSDate* creationDate;

@property (nonatomic, strong) NSDate* modificationDate;

@property (nonatomic, strong) NSString* name;

@end

@interface _JCONamedEntity (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

@end

@interface JCONamedEntityAttributes: NSObject 
+ (NSString *)creationDate;
+ (NSString *)modificationDate;
+ (NSString *)name;
@end

NS_ASSUME_NONNULL_END
