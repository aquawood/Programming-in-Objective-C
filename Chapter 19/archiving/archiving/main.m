//
//  main.m
//  archiving
//
//  Created by Gong heng on 12-9-6.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDictionary *glossary=
        [NSDictionary dictionaryWithObjectsAndKeys:
         @"get a fresh start everyday at",@"subway",
         @"a place to study and chill",@"library",
         @"a place to kick some ass",@"gym", nil];
        
        if ([glossary writeToFile:@"glossary" atomically:YES]==NO) {
            NSLog(@"save to file failed!");
        }
        
        NSDictionary *glss=[NSDictionary dictionaryWithContentsOfFile:@"glossary"];
        
        for(NSString *key in glss)
        {
            NSLog(@"key:%@ value:%@",key,[glss objectForKey:key]);
        }
        
        [NSKeyedArchiver archiveRootObject:glossary toFile:@"glossary.archive"];
        NSDictionary *dict=[NSKeyedUnarchiver unarchiveObjectWithFile:@"glossary.archive"];
        
        for(NSString *key in dict)
        {
            NSLog(@"key:%@ value:%@",key,[dict objectForKey:key]);
        }
    }
    return 0;
}

