//
//  main.m
//  EX.1
//
//  Created by Gong heng on 12-9-6.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int p, d;
        BOOL isPrime;
        NSMutableArray *primes=[NSMutableArray array];
        
        for (p=2; p<50; p++) {
            isPrime=YES;
            for (d=2; d<p; d++) {
                if (p%d==0) {
                    isPrime=NO;
                }
            }
            
            if (isPrime==YES) {
                [primes addObject:[NSNumber numberWithInt:p]];
            }
            
        }
        
        
        //using write to file
        if ([primes writeToFile:@"prime" atomically:YES]==NO) {
            NSLog(@"write to file failed!");
        }
        
        NSMutableArray *testArray=[NSMutableArray arrayWithContentsOfFile:@"prime"];
        for(NSNumber *num in testArray)
            NSLog(@"%@",num);
        
        //using archive
        if ([NSKeyedArchiver archiveRootObject:primes toFile:@"prime.arch"]==NO) {
            NSLog(@"write to file failed!");
        }
        testArray=[NSKeyedUnarchiver unarchiveObjectWithFile:@"prime.arch"];
        for(NSNumber *num in testArray)
            NSLog(@"  %@",num);
    }
    return 0;
}

