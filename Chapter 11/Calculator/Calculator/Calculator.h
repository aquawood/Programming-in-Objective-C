//
//  Calculator.h
//  Calculator
//
//  Created by Gong heng on 12-8-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator : NSObject

@property double accumulator, temp, cel, memory;

-(void) add: (double) n;
-(void) substraction: (double) n;
-(void) multiply: (double) n;
-(void) divide:(double) n;
-(void) clear;

-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double)n;
-(double) memorySubstration: (double)n;
-(void) convert:(double) t;


@end
