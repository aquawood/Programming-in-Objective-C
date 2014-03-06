//
//  main.m
//  EnumerateContentOfDir
//
//  Created by Gong heng on 12-8-30.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *path;
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;
        
        fm=[NSFileManager defaultManager];
        NSLog(@"the current dir is: %@",[fm currentDirectoryPath]);
        
        path=[fm currentDirectoryPath];
        
        if([fm createDirectoryAtPath:@"new" withIntermediateDirectories:YES attributes:nil error:NULL]==NO)
        {
            NSLog(@"can not create new dir!");
            return 1;
        }
        
        if ([fm changeCurrentDirectoryPath:@"new"]==NO) {
            NSLog(@"dir change failed!");
            return 2;
        }
        NSLog(@"the current dir is: %@",[fm currentDirectoryPath]);
        
        if ([fm createDirectoryAtPath:@"subNew" withIntermediateDirectories:YES attributes:nil error:NULL]==NO) {
            NSLog(@"dir createion failed!");
            return 3;
        }
        //[fm changeCurrentDirectoryPath:path];
        //enumerate the directory
        dirEnum=[fm enumeratorAtPath:path];
        
        NSLog(@"the content in this %@ is: ",path);
        
        while ((path=[dirEnum nextObject])!=nil) {
                
            NSLog(@"%@",path);
            BOOL flag;
            [fm fileExistsAtPath:path isDirectory:&flag];
            /*
            if (flag==YES) {
                [dirEnum skipDescendants];
            }
             */
        }
        
        NSLog(@"==============================");
        dirArray=[fm contentsOfDirectoryAtPath:[fm currentDirectoryPath] error:NULL];
        for(path in dirArray)
        {
            NSLog(@"%@",path);
        }
        
        
    }
    return 0;
}

