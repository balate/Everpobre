// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to JCONoteBook.m instead.

#import "_JCONoteBook.h"

@implementation JCONoteBookID
@end

@implementation _JCONoteBook

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"NoteBook" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"NoteBook";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"NoteBook" inManagedObjectContext:moc_];
}

- (JCONoteBookID*)objectID {
	return (JCONoteBookID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic notes;

- (NSMutableSet<JCONote*>*)notesSet {
	[self willAccessValueForKey:@"notes"];

	NSMutableSet<JCONote*> *result = (NSMutableSet<JCONote*>*)[self mutableSetValueForKey:@"notes"];

	[self didAccessValueForKey:@"notes"];
	return result;
}

@end

@implementation JCONoteBookRelationships 
+ (NSString *)notes {
	return @"notes";
}
@end

