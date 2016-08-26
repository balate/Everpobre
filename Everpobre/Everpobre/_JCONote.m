// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JCONote.m instead.

#import "_JCONote.h"

@implementation JCONoteID
@end

@implementation _JCONote

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Note" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Note";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Note" inManagedObjectContext:moc_];
}

- (JCONoteID*)objectID {
	return (JCONoteID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic text;

@dynamic notebook;

@dynamic photo;

@end

@implementation JCONoteAttributes 
+ (NSString *)text {
	return @"text";
}
@end

@implementation JCONoteRelationships 
+ (NSString *)notebook {
	return @"notebook";
}
+ (NSString *)photo {
	return @"photo";
}
@end

