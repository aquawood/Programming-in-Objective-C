//
//  main.m
//  Prog16.6
//
//  Created by Gong heng on 12-8-30.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager *fm;
        NSString *source,*dest;
        BOOL isDir;
        NSProcessInfo *proc=[NSProcessInfo processInfo];
        NSArray *arg=[proc arguments];
        
        fm=[NSFileManager defaultManager];
        
        if ([arg count]!=3) {
            NSLog(@"%@ src dest",[proc processName]);
            return 1;
        }
        
        source=[arg objectAtIndex:1];
        dest=[arg objectAtIndex:2];
        
        if ([fm isReadableFileAtPath:source]==NO) {
            NSLog(@"%@ is not readable!",source);
            return 2;
        }
        
        [fm fileExistsAtPath:dest isDirectory:&isDir];
        if (isDir==YES) {
            dest=[dest stringByAppendingPathComponent:[source lastPathComponent]];
        }
        
        [fm removeItemAtPath:dest error:NULL];
        if ([fm copyItemAtPath:source toPath:dest error:NULL]==NO) {
            NSLog(@"copy failed!");
            return 3;
        }
        NSLog(@"copy succeeded!%@ to %@",source,dest);
        
    }
    return 0;
}

