//
//  main.m
//  EX.8
//
//  Created by Gong heng on 12-9-2.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        __weak 
        
        NSURL *myUrl=[NSURL URLWithString:@"http://bit.ly/aycNwd"];
        NSDictionary *myDic=[NSDictionary dictionaryWithContentsOfURL:myUrl];
        
        NSArray *myArray=[NSArray array];
        myArray=[myDic allKeys];
        
        for(NSString *var in myArray)
        {
            NSLog(@"var:%@, val:%@",var,[myDic objectForKey:var]);
        }
        
    }
    return 0;
}

