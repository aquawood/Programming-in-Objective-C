//
//  AddressCard.h
//  AddressCard
//
//  Created by Gong heng on 12-8-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject<NSCoding>
@property (copy, nonatomic)NSString *firstname,*lastname,*email,*address,*phone;
@property (copy, nonatomic)NSMutableArray *card;

-(void)setfirstName:(NSString *)thefName andlastName:(NSString *)thelName andEmail:(NSString *)theEmail andAddress:(NSString *)theAddress andPhone:(NSString *)thePhone;

-(id)initWithfirstName:(NSString *)thefName andlastName:(NSString *)thelName andEmail:(NSString *)theEmail andAddress:(NSString *)theAddress andPhone:(NSString *)thePhone;


/*
-(void)setName:(NSString *)theName;
-(void)setEmail:(NSString *)theEmail;
-(void)setAddress:(NSString *)theAddress;
-(void)setPhone:(NSString *)thePhone;
-(NSString *)name;
-(NSString *)email;
-(NSString *)address;
-(NSString *)phone;
*/
-(void)print;

-(NSComparisonResult)compareNames:(id)element;

@end
