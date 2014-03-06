//
//  main.m
//  setObjects
//
//  Created by Gong heng on 12-8-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#define INTOBJ(V) [NSNumber numberWithInteger:V]

@interface NSSet (printing)

-(void)print;

@end

@implementation NSSet(printing)

-(void)print
{
    printf("{ ");
    
    for(NSNumber *num in self)
    {
        printf("%li ",(long)[num integerValue]);
    }
    
    printf("}");
}

@end


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableSet *set1=[NSMutableSet setWithObjects:INTOBJ(1),INTOBJ(4),INTOBJ(5),INTOBJ(8),INTOBJ(10), nil];
        
        NSMutableSet *set2=[NSMutableSet setWithObjects:INTOBJ(1),INTOBJ(3),INTOBJ(6),INTOBJ(9),INTOBJ(7), nil];
        
        NSMutableSet *set3=[NSMutableSet setWithObjects:INTOBJ(2),INTOBJ(7),INTOBJ(9), nil];
        
        NSLog(@"set1:");
        [set1 print];
        
        NSLog(@"set2:");
        [set2 print];
        
        if ([set1 isEqualToSet:set2]==YES) {
            NSLog(@"set 1&2 are equal!");
        }
        else {
            NSLog(@"set 1&2 are not equal!");
        }
        
        if ([set1 containsObject:INTOBJ(8)]==YES) {
            NSLog(@"set1 contains 8");
        }
        else {
            NSLog(@"set1 does not contains 8");
        }
        
        [set3 addObject:INTOBJ(10)];
        [set3 removeObject:INTOBJ(9)];
        [set3 print];
        
        [set1 intersectSet:set2];
        [set1 print];
        
        [set1 unionSet:set3];
        [set1 print];
        
        NSCountedSet *set4=[NSCountedSet setWithObjects:INTOBJ(1),INTOBJ(1), nil];
        NSLog(@"%lu",[set4 countForObject:INTOBJ(1)]);
        
        
    }
    return 0;
}

