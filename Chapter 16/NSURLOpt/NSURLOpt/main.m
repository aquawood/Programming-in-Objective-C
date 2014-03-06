//
//  main.m
//  NSURLOpt
//
//  Created by Gong heng on 12-8-31.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSURL *myUrl=[NSURL URLWithString:@"http://diabloding.com"];
        
        //NSLog(@"%@",[NSString stringWithContentsOfURL:myUrl encoding:NSASCIIStringEncoding error:NULL]);
        
        NSDictionary *myDictionary=[NSDictionary dictionaryWithContentsOfURL:myUrl];
        if (myDictionary==nil) {
            NSLog(@"!!!!!!!");
        }
        
        for(NSString *key in myDictionary)
        {
            NSLog(@"%@,%@",key,[myDictionary objectForKey:key]);
        }
        
        NSData *myData=[NSData dataWithContentsOfURL:myUrl];
        
        NSLog(@"%@",myData);
        
    }
    return 0;
}

