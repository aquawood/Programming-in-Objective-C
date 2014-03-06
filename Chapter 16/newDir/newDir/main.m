//
//  main.m
//  newDir
//
//  Created by Gong heng on 12-8-29.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *dirName=@"testDir";
        NSString *path;
        NSFileManager *fm;
        
        fm=[NSFileManager defaultManager];
        
        path=[fm currentDirectoryPath];
        NSLog(@"current paht is :%@",path);
        
        if ([fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL]==NO) {
            NSLog(@"create of new path failed!");
            return 1;
        }
        
        if ([fm moveItemAtPath:dirName toPath:@"nDir" error:NULL]==NO) {
            NSLog(@"rename failed!");
            return 2;
        }
        
        if ([fm changeCurrentDirectoryPath:@"nDir"]==NO) {
            NSLog(@"change current directory failed!");
            return 3;
        }
        
        path=[fm currentDirectoryPath];
        NSLog(@"the current directory is changed to: %@",path);
        
        
        
    }
    return 0;
}

