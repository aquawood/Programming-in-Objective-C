//
//  Fraction.h
//  FractionTest
//
//  Created by Gong heng on 12-8-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;
-(void) print;
-(double) convertToNum; 
-(void) setTo:(int) n over: (int) d;
-(Fraction *) add: (Fraction *)f;
-(Fraction *) substraction:(Fraction *)f;
-(Fraction *) multiply:(Fraction *)f;
-(Fraction *) divide:(Fraction *)f;
-(void) reduce;

@end
