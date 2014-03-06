//
//  Fraction.m
//  FractionTest
//
//  Created by Gong heng on 12-8-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator,denominator;


-(void) print
{
    int k;
    if((numerator%denominator==0||denominator%numerator==0)&&numerator!=1&&numerator!=-1 && denominator!=-1&&denominator!=1)
        if (abs(numerator)>abs(denominator)) {
            k=numerator/denominator;
            NSLog(@"%i %i/%i(can be reduced)",k,(abs(numerator)-abs(k)*abs(denominator)),denominator);
            
        }
        else {
            NSLog(@"%i/%i(can be reduced)",numerator,denominator);
        }
    else{
        if (abs(numerator)>abs(denominator)) {
            k=numerator/denominator;
            NSLog(@"%i %i/%i",k,(abs(numerator)-abs(k)*abs(denominator)),denominator);
        }
        else {
            NSLog(@"%i/%i",numerator,denominator);
        }
    }
       
}
-(double) convertToNum
{
    if(denominator!=0)
        return (double) numerator/denominator;
    else
        return NAN;
}

-(void) setTo:(int)n over:(int)d
{
    numerator=n;
    denominator=d;
}

-(Fraction *)add:(Fraction *)f
{
    Fraction *result = [Fraction new];
    result.numerator=numerator*f.denominator+denominator*f.numerator;
    result.denominator=denominator*f.denominator;
    
    [result reduce];
    return result;
}
-(Fraction *)substraction:(Fraction *)f
{
    Fraction *result = [Fraction new];
    result.numerator=numerator*f.denominator-denominator*f.numerator;
    result.denominator=denominator*f.denominator;
    [result reduce];
    return result;
}
-(Fraction *)multiply:(Fraction *)f
{
    Fraction *result = [Fraction new];
    result.numerator=numerator*f.numerator;
    result.denominator=denominator*f.denominator;
    [result reduce];
    return result;
}
-(Fraction *)divide:(Fraction *)f
{
    Fraction *result=[Fraction new];
    result.numerator=numerator*f.denominator;
    result.denominator=denominator*f.numerator;
    [result reduce];
    return result;
    
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while(v!=0)
    {
        temp=u%v;
        u=v;
        v=temp;
    }
    
    numerator/=u;
    denominator/=u;
}

@end
