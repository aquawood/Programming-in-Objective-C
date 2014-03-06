//
//  main.m
//  copyObj
//
//  Created by Gong heng on 12-9-3.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *dataArray=[NSMutableArray arrayWithObjects:@"one",@"two",@"three",@"four", nil];
        [dataArray removeObjectAtIndex:0];
        NSMutableArray *dataArray2=[dataArray mutableCopy];
        
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray:");
        for(NSString * num in dataArray)
        {
            NSLog(@"%@",num);
        }
        
        NSLog(@"dataArray2:");
        for(NSString *num in dataArray2)
        {
            NSLog(@"%@",num);
        }
        
        NSLog(@"=================");
        
        dataArray2=[dataArray mutableCopy];
        
        [dataArray removeObjectAtIndex:0];
        
        NSLog(@"dataArray:");
        for(NSString * num in dataArray)
        {
            NSLog(@"%@",num);
        }
        
        NSLog(@"dataArray2:");
        for(NSString *num in dataArray2)
        {
            NSLog(@"%@",num);
        }
        
    
    NSLog(@"======================");
        NSMutableArray *dataArray3=[NSMutableArray arrayWithObjects:
                                    [NSMutableString stringWithString:@"one"],
                                    [NSMutableString stringWithString:@"two"],
                                    [NSMutableString stringWithString:@"three"],nil];
        
        NSMutableArray *dataArray4=[dataArray3 mutableCopy];
        NSMutableString *mstr=[NSMutableString stringWithString:[dataArray3 objectAtIndex:0]];
        [mstr appendString:@"ONE"];
        [dataArray3 replaceObjectAtIndex:0 withObject:mstr];
    NSLog(@"dataArray3:");
    for(NSString * num in dataArray3)
    {
        NSLog(@"%@",num);
    }
    
    NSLog(@"dataArray4:");
    for(NSString *num in dataArray4)
    {
        NSLog(@"%@",num);
    }
    

    [mstr appendString:@"blabla"];
    NSLog(@"dataArray4:");
    for(NSString *num in dataArray4)
    {
        NSLog(@"%@",num);
    }

         
        
    }
    return 0;
}

