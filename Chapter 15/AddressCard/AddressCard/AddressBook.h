//
//  AddressBook.h
//  AddressCard
//
//  Created by Gong heng on 12-8-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AddressCard.h"
#import <Foundation/Foundation.h>

@interface AddressBook : NSObject<NSCoding,NSCopying>
@property (copy,nonatomic)NSString *bookName;
@property (nonatomic,strong)NSMutableArray *book;


-(id)initWithName:(NSString *)bookname;

-(void)addCard:(AddressCard *)theCard;

-(NSUInteger) entries;

-(void)list;

-(NSMutableArray *)lookup:(NSString *)theName;

-(void)removeCard:(NSString *)theCard;

-(void)sort;
-(void)blockSort;
-(NSMutableArray *)lookupAll:(NSString *)theName;
-(BOOL)removeName:(NSString *)theName;

@end
