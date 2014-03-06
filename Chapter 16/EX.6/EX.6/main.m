//
//  main.m
//  EX.6
//
//  Created by Gong heng on 12-9-1.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileHandle *inFile, *outFile,*stdOutput;
        NSData *buffer;
        NSFileManager *fm=[NSFileManager defaultManager];
        NSUInteger kBufSize=128;
        
        //open file for reading
        inFile=[NSFileHandle fileHandleForReadingAtPath:@"testfile"];
        
        if (inFile==nil) {
            NSLog(@"open file reading failed!");
            return 1;
        }
        
        
        //create file for output
        [fm createFileAtPath:@"testout" contents:nil attributes:nil];
        outFile=[NSFileHandle fileHandleForUpdatingAtPath:@"testout"];
        if (outFile==nil) {
            NSLog(@"open file for writing failed!");
        }
        
        buffer=[inFile availableData];
        NSUInteger size=[buffer length];
        NSLog(@"the size of source is %lu",size);
        
        
        [inFile seekToFileOffset:0];
        do{
            buffer=[inFile readDataOfLength:kBufSize];
            [outFile writeData:buffer];
            //[inFile seekToFileOffset:i*kBufSize];
            NSLog(@"1 cell done!");
        }while ([buffer length]>0);
            
        stdOutput=[NSFileHandle fileHandleWithStandardOutput];
        [outFile seekToFileOffset:0];
        do{
            buffer=[outFile readDataOfLength:kBufSize];
            [stdOutput writeData:buffer];
            //NSLog(@"one done");
        }while ([buffer length]>0);
        if ([[fm contentsAtPath:@"testfile" ] isEqualTo:[fm contentsAtPath:@"testout"]]==NO) {
            NSLog(@"copy failed!");
            return 2;
        }
        NSLog(@"copy done!");
        [inFile closeFile];
        [outFile closeFile];
        
        
    }
    return 0;
}

