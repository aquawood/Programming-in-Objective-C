//
//  Calculator.m
//  Calculator
//
//  Created by Gong heng on 12-8-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize accumulator,temp,cel,memory;
/*-(void) setCel:(double)t
 {
 cel=t;
 }
 
 -(double) temp
 {
 return temp;
 }
 
 -(double) cel
 {
 return cel;
 }
 */
-(void) convert:(double)t
{
    temp=(t-32)/1.8;
}

/*-(void) setAccumulator:(double)n
 {
 accumulator=n;
 }
 
 -(double) accumulator
 {
 return accumulator;
 }
 */
-(void) add:(double)n
{
    accumulator+=n;
}

-(void) substraction:(double)n
{
    accumulator-=n;
}

-(void) multiply:(double)n
{
    accumulator*=n;
}

-(void) divide:(double)n
{
    accumulator/=n;
}

-(void) clear
{
    accumulator=0;
}

-(double) memoryClear;
{
    memory=0;
    return memory;
}
-(double) memoryStore;
{
    memory=accumulator;
    return memory;
}
-(double) memoryRecall
{
    accumulator=memory;
    return accumulator;
}
-(double) memoryAdd:(double)n
{
    memory+=n;
    return memory;
}
-(double) memorySubstration:(double)n
{
    memory-=n;
    return memory;
}


@end
