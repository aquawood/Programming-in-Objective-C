//
//  main.m
//  BasicFileOpt
//
//  Created by Gong heng on 12-8-28.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *fName=@"test";
        NSFileManager *fm;
        NSDictionary *attr;
        NSString *cd;
        
        
        fm=[NSFileManager defaultManager];
        
        cd=[fm currentDirectoryPath];
        NSLog(@"the current path is:%@",cd);
        
        //make sure th file exist
        if ([fm fileExistsAtPath:fName]==NO) {
            NSLog(@"file does not exist!");
            return 1;
        }
        
        //make a copy of the file
        if ([fm copyItemAtPath:fName toPath:@"backup.txt" error:NULL]==NO) {
            NSLog(@"copy failed!");
            return 2;
        }
        
        //test if two files are equal
        if ([fm contentsEqualAtPath:fName andPath:@"backup.txt"]==NO) {
            NSLog(@"they are not equal!");
            return 3;
        }
        
        //rename the copy
        if ([fm moveItemAtPath:@"backup.txt" toPath:@"newfile.txt" error:NULL]==NO) {
            NSLog(@"rename failed!");
            return 4;
        }
        
        //get size of newfile
        
        if ((attr=[fm attributesOfItemAtPath:@"newfile.txt" error:NULL])==nil) {
            NSLog(@"get size failed!");
            return 5;
        }
        NSLog(@"the size of newfile is:%llu",[[attr objectForKey:NSFileSize]unsignedLongLongValue]);
        
        //delete the original file
        if ([fm removeItemAtPath:fName error:NULL]==NO) {
            NSLog(@"deletion failed!");
            return 6;
        }
        
    }
    return 0;
}

