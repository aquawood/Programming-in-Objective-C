//
//  main.m
//  NSNumbers
//
//  Created by Gong heng on 12-8-19.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSNumber *myNumber,*floatNumber,*intNumber;
        int myInt;
        
        intNumber=[NSNumber numberWithInt:300];
        myInt=[intNumber intValue];
        NSLog(@"%li",(long)myInt);
        
        floatNumber=[NSNumber numberWithFloat:200];
        NSLog(@"%f",[floatNumber floatValue]);
        
        myNumber=[NSNumber numberWithDouble:300.];
        NSLog(@"%lg",[myNumber doubleValue]);
        
        myNumber=[NSNumber numberWithChar:'J'];
        NSLog(@"%c",[myNumber charValue]);
        
        if ([intNumber isEqualToNumber:floatNumber]==YES) {
            NSLog(@"they are equal!");
        }
        else
            NSLog(@"they are not equal!");
        
        if ([intNumber compare:floatNumber]==NSOrderedDescending) {
            NSLog(@"Former is greater than the latter!");
        }

        NSDecimalNumber *dec1;
        NSDecimalNumber *dec2=[[NSDecimalNumber alloc]initWithMantissa:2 exponent:-3 isNegative:NO];
        dec1=[dec2 decimalNumberByRaisingToPower:2];
        dec1=[dec2 decimalNumberByAdding:dec1];
        NSLog(@"%@",dec2);
    }
    return 0;
}

