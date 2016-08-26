// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JCOPhoto.m instead.

#import "_JCOPhoto.h"

@implementation JCOPhotoID
@end

@implementation _JCOPhoto

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Photo" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Photo";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Photo" inManagedObjectContext:moc_];
}

- (JCOPhotoID*)objectID {
	return (JCOPhotoID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic imageData;

@dynamic notes;

@end

@implementation JCOPhotoAttributes 
+ (NSString *)imageData {
	return @"imageData";
}
@end

@implementation JCOPhotoRelationships 
+ (NSString *)notes {
	return @"notes";
}
@end

