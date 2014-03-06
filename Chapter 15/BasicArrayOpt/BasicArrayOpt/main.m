//
//  main.m
//  BasicArrayOpt
//
//  Created by Gong heng on 12-8-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *monthNames=[NSArray arrayWithObjects:@"Jan",@"Feb",@"Mar",@"Apr",@"May",@"Jun",@"Jul",
            @"Aug",@"Sep",@"Oct",@"Nov",@"Dec",nil ];
        NSLog(@"month      number");
        NSLog(@"=====      ======");
        for (int i=0; i<12; i++) {
            NSLog(@"%@        %i",[monthNames objectAtIndex:i],i+1);
        }
        
        NSMutableArray *numbers=[NSMutableArray array];
        NSNumber *myNum;
        for (int i=0; i<12; i++) {
            myNum=[NSNumber numberWithInteger:i];
            [numbers addObject:myNum];
        }
        for (int i=0; i<12; i++) {
            NSLog(@"%@",[numbers objectAtIndex:i]);
        }
       //NSLog display all
        NSLog(@"%@",numbers);
    }
    return 0;
}

