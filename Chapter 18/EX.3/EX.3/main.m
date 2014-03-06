//
//  main.m
//  EX.3
//
//  Created by Gong heng on 12-9-5.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSMutableString *mkey=[NSMutableString stringWithString:@"key1"];
        NSMutableString *mval=[NSMutableString stringWithString:@"val1"];
        
        NSMutableDictionary *dic=[[NSMutableDictionary alloc]initWithObjectsAndKeys:mval,mkey, nil];
        
        NSDictionary *dic2=[[NSDictionary alloc]initWithObjectsAndKeys:mkey,mval, nil];
        
        [mkey appendString:@"boom!"];
        NSArray *key=[dic2 allKeys];
        for(NSString *item in key)
            NSLog(@"%@",[dic2 valueForKey:item]);
        
        
        
        id imDic=[dic copy];
        id muDic=[dic mutableCopy];
        
        NSMutableString *mstr=[dic objectForKey:@"key1"];
        NSLog(@"m%@",mstr);
        [mstr appendString:@"BOOM!!!"];
        
            NSLog(@"%@",[dic objectForKey:@"key1"]);
            
            [muDic setObject:@"val2" forKey:@"key2"];
        
            NSLog(@"%@",[imDic objectForKey:@"key1"]);
        
        
            NSLog(@"%@",[muDic objectForKey:@"key1"]);
        
        

        
    }
    return 0;
}

