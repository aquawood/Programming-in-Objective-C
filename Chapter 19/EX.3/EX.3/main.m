//
//  main.m
//  EX.3
//
//  Created by Gong heng on 12-9-6.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDictionary *dict=[NSDictionary dictionaryWithContentsOfFile:@"/Users/gongheng/Library/Preferences/com.apple.finder.plist"];
        NSArray *keyarray=[dict allKeys];
        NSLog(@"%lu",[keyarray count]);
        for(NSString *key in dict)
        {
            NSLog(@"%@,  %@",key,[dict objectForKey:key]);
        }
        
    }
    return 0;
}

