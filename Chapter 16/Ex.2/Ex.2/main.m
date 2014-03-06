//
//  main.m
//  Ex.2
//
//  Created by Gong heng on 12-8-31.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BOOL isDir;
        NSFileManager *fm;
        NSString *path;
        NSMutableArray *pathArray;
        NSString *inFile, *fName;
        NSDirectoryEnumerator *dirEnum;
        
        NSProcessInfo *proc=[NSProcessInfo processInfo];
        fm=[NSFileManager defaultManager];
        pathArray=[NSMutableArray array];
        
        NSArray *arg=[proc arguments];
        
        if ([arg count]!=3) {
            NSLog(@"plz type in arguments");
            return 1;
        }
        
        [fm fileExistsAtPath:arg[1]  isDirectory:&isDir];
        if(isDir==NO)
        {
            NSLog(@"first argument has to be a directory!");
            return 2;
        }
        
        inFile=[arg objectAtIndex:1];
        fName=[arg objectAtIndex:2];
        NSLog(@"search for %@ in %@",fName,inFile);
        
        dirEnum=[fm enumeratorAtPath:inFile];
        
        while ((path=[dirEnum nextObject])!=nil) {
            //NSLog(@"%@",path);
            if ([fName isEqualToString: [path lastPathComponent]]==YES) {
                [pathArray addObject:path];
            }
        }
        
        
        if([pathArray count]==0)
        {
            NSLog(@"file not found!");
        }
        else
        {
            for(path in pathArray){
                NSString *base=[[fm currentDirectoryPath] stringByAppendingPathComponent:inFile];
                NSString *fullpath=[base stringByAppendingPathComponent:path ];
                NSLog(@"%@", fullpath);
            }
        }
        
    }
    return 0;
}

