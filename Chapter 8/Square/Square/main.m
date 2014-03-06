//
//  main.m
//  Square
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Square.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Square *mySquare=[[Square alloc]init];
        
        [mySquare setSides:9];
        NSLog(@"side=%i,area=%i,perimeter=%i",[mySquare side],[mySquare area],[mySquare perimeter]);
        
    }
    return 0;
}

