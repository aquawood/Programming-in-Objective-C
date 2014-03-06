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
        NSString *dest,*copyDest;
        BOOL isDir;
        NSProcessInfo *proc=[NSProcessInfo processInfo];
        NSArray *arg=[proc arguments];
        NSMutableArray *source=[NSMutableArray arrayWithArray:arg];
        [source removeObjectAtIndex:([arg count]-1)];
        
        fm=[NSFileManager defaultManager];
        
        NSLog(@"cd is %@",[fm currentDirectoryPath]);
        
        if (([source count]==1)||([source count]==0)) {
            NSLog(@"%@ need more arguments",[proc processName]);
            return 1;
        }
        
        dest=[arg lastObject];
        
        for(int i=1;i<[source count];i++)
        {
            if ([fm isReadableFileAtPath:source[i]]==NO) {
                NSLog(@"%@ is not readable!",source[i]);
                return 2;
            }
        }
        
        [fm fileExistsAtPath:dest isDirectory:&isDir];
        if (isDir==NO) {
            NSLog(@"last argument has to be a directory!");
            return 3;
        }
        
        for(int j=1;j<[source count];j++)
        {
            
            copyDest=[dest stringByAppendingPathComponent:[source[j] lastPathComponent]];
            
            
            [fm removeItemAtPath:copyDest error:NULL];
            if ([fm copyItemAtPath:source[j] toPath:copyDest error:NULL]==NO) {
                NSLog(@"copy failed!");
                return 4;
            }
            NSLog(@"copy succeeded! to %@",[arg lastObject]);
        }
    }
    return 0;
}

