//
//  main.m
//  BasicFileHandleOpt
//
//  Created by Gong heng on 12-8-31.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSFileHandle *inFile,*outFile;
        NSData *buffer,*buffer1;
        
        NSFileManager *fm=[NSFileManager defaultManager];
        
        if ([fm fileExistsAtPath:@"File"]==NO) {
            NSLog(@"file does not exist!");
        }
        buffer=[fm contentsAtPath:@"File"];
        
        if ([fm createFileAtPath:@"testfile" contents:buffer attributes:nil]==NO) {
            NSLog(@"file create failed!");
            return 1;
        }
        
        inFile=[NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        if (inFile==nil) {
            NSLog(@"open source failed!");
            return 2;
        }
        [fm createFileAtPath:@"testout" contents:nil attributes:nil];
        
        outFile=[NSFileHandle fileHandleForWritingAtPath:@"testout"];
        if (outFile==nil) {
            NSLog(@"open file for writing failed!");
            return 3;
        }
        buffer1=[inFile readDataToEndOfFile];
        
        [outFile truncateFileAtOffset:0];
        
        [outFile writeData:buffer1];
        [inFile closeFile];
        [outFile closeFile];
        NSLog(@"%@",[NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:NULL]);
        
    }
    return 0;
}

