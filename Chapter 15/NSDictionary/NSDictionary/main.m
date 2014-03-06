//
//  main.m
//  NSDictionary
//
//  Created by Gong heng on 12-8-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableDictionary *glossory=[NSMutableDictionary dictionary];
        
        [glossory setObject:@"explaination for abstract class" forKey:@"abstract class"];
        [glossory setObject:@"explaination for love" forKey:@"love"];
        [glossory setObject:@"explaination for peace" forKey:@"peace"];
        
        for(NSString *key in glossory)
        {
            NSLog(@"%@,%@",key,[glossory objectForKey:key]);
        }
        
    NSArray *keys=[glossory allKeys];
    
    keys=[keys sortedArrayUsingComparator:^(id obj1,id obj2){
        return [obj2 compare:obj1];
    }];
    for(NSString *akey in keys)
    {
        NSLog(@"%@,%@",akey,[glossory objectForKey:akey]);
    }
        
        
    }
    return 0;
}

