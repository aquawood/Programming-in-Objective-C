//
//  main.m
//  NSDataOpt
//
//  Created by Gong heng on 12-8-28.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager *fm=[NSFileManager defaultManager];
        NSData *buffer;
        NSString *fName=@"newfile";
        
        if ([fm fileExistsAtPath:fName]==NO) {
            NSLog(@"file does no exist!");
        }
        
        NSLog(@"current directory is :%@",[fm currentDirectoryPath]);
        buffer=[fm contentsAtPath:fName];
        
        if (buffer==nil) {
            NSLog(@"copy failed!");
            return 1;
        }
        
        if ([fm createFileAtPath:@"backup" contents:buffer attributes:nil]==NO) {
            NSLog(@"create file failed!");
            return 2;
        }
        
        NSLog(@"copy done!");
        
        
    }
    return 0;
}

