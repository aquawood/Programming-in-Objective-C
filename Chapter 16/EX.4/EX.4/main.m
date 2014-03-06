//
//  main.m
//  EX.4
//
//  Created by Gong heng on 12-9-1.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSProcessInfo *proc=[NSProcessInfo processInfo];
        //arguments
        NSArray *arg=[proc arguments];
        for(NSString *item in arg)
        {
            NSLog(@"%@",item);
        }
        NSLog(@"=====================");
        
        //environment
        NSDictionary *dic=[proc environment];
        NSArray *keys=[dic allKeys];
        for(NSString *var in keys)
        {
            NSLog(@"var:%@ value:%@",var,[dic objectForKey:var]);
        }
        NSLog(@"=====================");
        
        //processIdentifier
        NSLog(@"%d",[proc processIdentifier]);
        //processname
        NSLog(@"%@",[proc processName]);
        //globallayUniqueString
        NSLog(@"%@",[proc globallyUniqueString]);
        //hostName
        NSLog(@"%@",[proc hostName]);
        //OS
        NSLog(@"%lu, %@, %@",[proc operatingSystem],[proc operatingSystemName],[proc operatingSystemVersionString]);
        
    }
    return 0;
}

