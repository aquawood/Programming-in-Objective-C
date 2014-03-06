//
//  AddressCard.m
//  AddressCard
//
//  Created by Gong heng on 12-8-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize firstname,lastname,email,address,phone,card;





-(void)setfirstName:(NSString *)thefName andlastName:(NSString *)thelName andEmail:(NSString *)theEmail andAddress:(NSString *)theAddress andPhone:(NSString *)thePhone
{
    self.firstname=thefName;
    self.lastname=thelName;
    self.email=theEmail;
    self.address=theAddress;
    self.phone=thePhone;
    
    self.card=[NSMutableArray arrayWithObjects:thefName,thelName,theEmail,theAddress, nil];
}

-(id)init
{
    return [self initWithfirstName:@"" andlastName:@"" andEmail:@"" andAddress:@"" andPhone:@""];
}

-(id)initWithfirstName:(NSString *)thefName andlastName:(NSString *)thelName andEmail:(NSString *)theEmail andAddress:(NSString *)theAddress andPhone:(NSString *)thePhone
{
    
    if (self) {
        [self setfirstName:thefName andlastName:(NSString *)thelName andEmail:theEmail andAddress:theAddress andPhone:thePhone];
    }
    return self;
}

-(void)print
{
    NSLog(@"================================");
    NSLog(@"|                              |");
    NSLog(@"|  %-28s %s|",[firstname UTF8String],[lastname UTF8String]);
    NSLog(@"|  %-28s|",[email UTF8String]);
    NSLog(@"|  %-28s|",[address UTF8String]);
    NSLog(@"|  %-28s|",[phone UTF8String]);
    NSLog(@"|                              |");
    NSLog(@"================================");
}

-(NSComparisonResult)compareNames:(id)element
{
    return[[element lastname] compare:lastname];
}

-(void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:firstname forKey:@"AddressCardFirstname"];
    [encoder encodeObject:lastname forKey:@"AddressCardLastname"];
    [encoder encodeObject:email forKey:@"AddressCardEmail"];
    [encoder encodeObject:address forKey:@"AddressCardAddress"];
    [encoder encodeObject:phone forKey:@"AddressCardPhone"];
}

-(id)initWithCoder:(NSCoder *)decoder
{
    firstname=[decoder decodeObjectForKey:@"AddressCardFirstname"];
    lastname=[decoder decodeObjectForKey:@"AddressCardLastname"];
    email=[decoder decodeObjectForKey:@"AddressCardEmail"];
    address=[decoder decodeObjectForKey:@"AddressCardAddress"];
    phone=[decoder decodeObjectForKey:@"AddressCardPhone"];
    
    return self;
}

@end
