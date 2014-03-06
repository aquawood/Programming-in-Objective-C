//
//  main.m
//  Ex.10
//
//  Created by Gong heng on 12-8-27.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface NSCountedSet (printing)
-(void)print;
@end

@implementation NSCountedSet (printing)
-(void)print
{
    for(NSNumber *num in self)
    {
        NSLog(@"number:%d with frequency:%lu",[num intValue],[self countForObject:num]);
    }
}

@end
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber *num1=[[NSNumber alloc]initWithInt:1];
        NSNumber *num2=[[NSNumber alloc]initWithInt:2];
        NSNumber *num3=[[NSNumber alloc]initWithInt:3];
        
        NSArray *bag1=[[NSArray alloc]initWithObjects:num1,num2,num2,num3,num3,num3, nil ];
        
        NSCountedSet *set1=[[NSCountedSet alloc]initWithArray:bag1];
        
        [set1 print];
        
        
    }
    return 0;
}

