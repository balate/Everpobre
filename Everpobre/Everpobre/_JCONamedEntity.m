// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JCONamedEntity.m instead.

#import "_JCONamedEntity.h"

@implementation JCONamedEntityID
@end

@implementation _JCONamedEntity

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"NamedEntity" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"NamedEntity";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"NamedEntity" inManagedObjectContext:moc_];
}

- (JCONamedEntityID*)objectID {
	return (JCONamedEntityID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic creationDate;

@dynamic modificationDate;

@dynamic name;

@end

@implementation JCONamedEntityAttributes 
+ (NSString *)attribute {
	return @"attribute";
}
+ (NSString *)attribute1 {
	return @"attribute1";
}
+ (NSString *)attribute2 {
	return @"attribute2";
}
+ (NSString *)creationDate {
	return @"creationDate";
}
+ (NSString *)modificationDate {
	return @"modificationDate";
}
+ (NSString *)name {
	return @"name";
}
@end

