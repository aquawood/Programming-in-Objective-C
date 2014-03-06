//
//  main.m
//  Archcopy
//
//  Created by Gong heng on 12-9-6.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *array=[[NSArray alloc]initWithObjects:[NSMutableString stringWithString:@"one" ],[NSMutableString stringWithString:@"twoo"],[NSMutableString stringWithString:@"threee"], nil ];
        NSArray *array2=[NSArray array];
        
        NSData *data=[NSData data];
        data=[NSKeyedArchiver archivedDataWithRootObject:array];
        array2=[NSKeyedUnarchiver unarchiveObjectWithData:data];
        
        NSMutableString *mstr=[array2 objectAtIndex:0];
        [mstr appendString:@"BOOM!"];
        
        NSLog(@"array:%@",array);
        
        NSLog(@"array2:%@",array2);
        
        
    }
    return 0;
}

