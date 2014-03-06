//
//  main.m
//  pointerTest
//
//  Created by Gong heng on 12-8-18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
int arraySum(int array[],int n)
{
    int sum=0, *p;
    int *arrayEnd=array+n;
    for (p=array; p<arrayEnd; p++) {
        sum+=*p;
    }
    return sum;
}
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int f[3] = { 1, 2, 3 } ;
        NSLog(@"the sum of the array is:%i",arraySum(f,3));        
    }
    return 0;
}

