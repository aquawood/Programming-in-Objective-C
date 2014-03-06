//
//  AddressBook.m
//  AddressCard
//
//  Created by Gong heng on 12-8-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize book,bookName;
-(id)initWithName:(NSString *)name
{
    self=[super init];
    if (self) {
        bookName=[NSString stringWithString:name];
        book=[NSMutableArray array];
    }
    return self;
}

-(id)init
{
    return [self initWithName:@"noName"];
}

-(void)addCard:(AddressCard *)theCard
{
    //[book addObject:theCard];
    //Chapter 15 Ex.11
    AddressCard *card=[[AddressCard alloc]initWithfirstName:theCard.firstname andlastName:theCard.lastname andEmail:theCard.email andAddress:theCard.address andPhone:theCard.phone];
    [book addObject:card];
}

-(NSUInteger)entries
{
    return [book count];
}

-(void)list
{
    NSLog(@"============for the content of %@============",bookName);
    for(AddressCard *theCard in book)
    {
        NSLog(@"%s %s\n   %s\n    %s\n    %s",[theCard.firstname UTF8String],[theCard.lastname UTF8String],[theCard.email UTF8String],[theCard.address UTF8String],[theCard.phone UTF8String]);
    }
    NSLog(@"=============================================");
}

//Ex.2&3&4

-(NSMutableArray *)lookup:(NSString *)theName
{   
    NSMutableArray *matches=[NSMutableArray array];
    for(AddressCard *mcard in book)
    {
        
        //Ex.4
        /*
         for(NSString *field in mcard.card)
        {
            NSRange substr=[[field lowercaseString] rangeOfString:[theName lowercaseString]];
            if (substr.location!=NSNotFound) {
                [matches addObject:mcard];
            }
         }
         */
         
        //Ex.3
        NSRange substr1=[[mcard.lastname lowercaseString] rangeOfString:[theName lowercaseString]];
        NSRange substr2=[[mcard.firstname lowercaseString] rangeOfString:[theName lowercaseString]];

        if (substr1.location!=NSNotFound) {
            [matches addObject:mcard];
        }
        
        if (substr2.location!=NSNotFound) {
            [matches addObject:mcard];
        }
            
    }
    
    return matches;
}

-(NSMutableArray *)lookupAll:(NSString *)theName
{
    
    NSIndexSet *matches=[book indexesOfObjectsPassingTest:
                         ^(id obj,NSUInteger idx,BOOL *stop)
                         {
                             if ([[obj firstname]caseInsensitiveCompare:theName]==NSOrderedSame) {
                                 return YES;
                             }
                             else
                                 return NO;
                         }];
    NSMutableArray *result=[NSMutableArray array];
    [matches enumerateIndexesUsingBlock:
            ^(NSUInteger idx,BOOL *stop){
                [result addObject:[book objectAtIndex:idx]];
            }];
    
    return result;
}


-(void)removeCard:(NSString *)theCard
{
    [book removeObjectIdenticalTo:theCard];
}

-(void)sort
{
    [book sortUsingSelector:@selector(compareNames:)];
}

-(void)blockSort
{
    [book sortUsingComparator:^(id obj1,id obj2){
        return [[obj1 lastname] compare:[obj2 lastname]];
    }];
}

-(BOOL)removeName:(NSString *)theName
{
    NSMutableArray *matches=[self lookup:theName];
    
    if (matches.count==1) {
        [book removeObjectIdenticalTo:matches[0]];
        return YES;
    }
    else
        return NO;
    
}

-(id)copyWithZone:(NSZone *)zone
{
    AddressBook *result=[[AddressBook allocWithZone:zone]init];
    [result setBookName:bookName];
    
    [result setBook:self.book];
    
    return result;
}

-(void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:bookName forKey:@"AddressbookName"];
    [encoder encodeObject:book forKey:@"Addressbook"];
}

-(id)initWithCoder:(NSCoder *)decoder
{
    bookName=[decoder decodeObjectForKey:@"AddressbookName"];
    book=[decoder decodeObjectForKey:@"Addressbook"];
    
    return self;
}


@end
