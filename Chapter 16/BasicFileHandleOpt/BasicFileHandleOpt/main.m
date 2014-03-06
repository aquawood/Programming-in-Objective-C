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
        
        NSData *buffer;
        
        buffer=[[NSFileManager defaultManager] contentsAtPath:@"File"];
        
        if([[NSFileManager defaultManager] createFileAtPath:@"testfile" contents:buffer attributes:nil]==NO){
            NSLog(@"create failed!");
            return 1;
        }
        inFile=[NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        if (inFile==nil) {
            NSLog(@"file open fo reading failed!");
            return 2;
        }
        
        buffer=[inFile readDataToEndOfFile];
    
        outFile=[NSFileHandle fileHandleForWritingAtPath:@"testout"];
        if (outFile==nil) {
            NSLog(@"open file for writing failed!");
            return 3;
        }
        //[outFile truncateFileAtOffset:0];
        [outFile seekToEndOfFile];
        [outFile writeData:buffer];
        
        [inFile closeFile];
        [outFile closeFile];
        
        NSLog(@"%@",[NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:NULL]);

    }
    return 0;
}

