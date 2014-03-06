//
//  main.m
//  Calculator
//
//  Created by Gong heng on 12-8-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Calculator.h"
#import "Calculator+Trig.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Calculator *mycal=[[Calculator alloc]init];
        [mycal setAccumulator:100.];
        [mycal add:100.];
        
        NSLog(@"1.%g",[mycal sin]);
        NSLog(@"2.%g",sin(200));
        [mycal substraction:100.];
        [mycal multiply:10.];
        [mycal divide:5.];
        
        [mycal setCel:50];
        [mycal convert:[mycal cel]];
        if ([mycal isMemberOfClass:[Calculator class]]==YES) {
            NSLog(@"mycal is a member of calculator!");
        }
        if ([mycal respondsToSelector:@selector(divide:)]==YES) {
            NSLog(@"myCal responds to divide!");
        }
        
        NSLog(@"the result is %g",[mycal accumulator]);
        NSLog(@"%g degree celsius equals to %g degree fahrenheit",[mycal cel],[mycal temp]);
        
        
        double a=3.31e-8;
        double b=2.01e-7;
        double c=7.16e-6;
        double d=2.01e-8;
        
        double y=(a+b)/(c+d);
        
        NSLog(@"the result is %e",y);
        
        NSLog(@"memory is %g",[mycal memoryStore]);
        [mycal memoryClear];
        [mycal memoryRecall];
        NSLog(@"accumulator is %g",[mycal accumulator]);
        [mycal memorySubstration:10];
        [mycal memoryRecall];
        NSLog(@"accumulator is %g",[mycal accumulator]);
        

        
    }
    return 0;
}

