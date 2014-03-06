//
//  main.m
//  EX.5
//
//  Created by Gong heng on 12-9-1.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface NSString (TempFiles)

-(NSString *)temporaryFileName;

@end

@implementation NSString (TempFiles)

-(NSString *)temporaryFileName
{
    NSProcessInfo *proc=[NSProcessInfo processInfo];
    NSString *tempName;
    tempName=[self stringByAppendingString:[proc globallyUniqueString]];
    return tempName;
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *fName=@"test";
        NSLog(@"give me a temp file name %@",[fName temporaryFileName]);
        
        
    }
    return 0;
}

