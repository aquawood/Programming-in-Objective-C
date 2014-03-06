//
//  main.m
//  BlockTest
//
//  Created by Gong heng on 12-8-17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

//a block
void (^calculateTriangleNum)(int) =
    ^(int n){
        int i,triangle=0;
        for(i=1;i<=n;i++)
        {
            triangle+=i;
        }
NSLog(@"the triangle number %d is %d",n,triangle);
};

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        calculateTriangleNum(5);
        calculateTriangleNum(10);
        
        __block int foo=10;
        void (^printFoo)(void)=
        ^(void){
            NSLog(@"foo=%d",foo);
            foo=20;//error?
        };
        foo=15;
        printFoo();
        NSLog(@"foo=%d",foo);
    }
    return 0;
}

