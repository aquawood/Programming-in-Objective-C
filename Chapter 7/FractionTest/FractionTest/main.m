//
//  main.m
//  FractionTest
//
//  Created by Gong heng on 12-8-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char * argv[])
{
    @autoreleasepool{
        Fraction *myFraction1 =[[Fraction alloc]init];
        Fraction *myFraction2 =[[Fraction alloc]init];
        
        Fraction *resultFraction;
        
        int n,d;
        NSLog(@"for first fraction:");
        NSLog(@"input numerator:");
        scanf("%i",&n);
        NSLog(@"input demoninator:");
        scanf("%i",&d);
        
        [myFraction1 setTo:n over:d]; 
        
        NSLog(@"for second fraction:");
        NSLog(@"input numerator:");
        scanf("%i",&n);
        NSLog(@"input demoninator:");
        scanf("%i",&d);
        [myFraction2 setTo:n over:d];
        NSLog(@"the value of myFraction is:");
        [myFraction1 print];
        NSLog(@"+");
        [myFraction2 print];
        NSLog(@"=");
        resultFraction = [myFraction1 add:myFraction2];
        [resultFraction print];
        
        [myFraction1 print];
        NSLog(@"-");
        [myFraction2 print];
        NSLog(@"=");
        resultFraction = [myFraction1 substraction:myFraction2];
        [resultFraction print];
        
        [myFraction1 print];
        NSLog(@"*");
        [myFraction2 print];
        NSLog(@"=");
        resultFraction = [myFraction1 multiply:myFraction2];
        [resultFraction print];
        
        [myFraction1 print];
        NSLog(@"/");
        [myFraction2 print];
        NSLog(@"=");
        resultFraction = [myFraction1 divide:myFraction2];
        [resultFraction print];
        
        //NSLog(@"in decimal is %g",[resultFraction convertToNum]);

    }
    
    
    return 0;
}