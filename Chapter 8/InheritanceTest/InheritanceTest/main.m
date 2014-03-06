//
//  main.m
//  InheritanceTest
//
//  Created by Gong heng on 12-8-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

//interface section
#define MIN(a,b) ( ((a)<(b))?(a):(b) )
#define MAX3(a,b,c) MAX(MAX((a),(b)),(c))
#define IS_UPPER_CASE(x) ( ((x)>='A')&&((x)<='Z') )
#define IS_LOWER_CASE(x) ( ((x)>='a')&&((x)<='z') )
#define IS_ALPHABETICAL(X) ( (IS_UPPER_CASE(X))||(IS_LOWER_CASE(X)) )
#define IS_DIGIT(x) ( ((x)>=0)&&((x)<=9) )
#define IS_SPECIAL(X) ( !(IS_ALPHABETICAL(X))&&!(IS_DIGIT(X)) )
#define ABSOLUTE_VALUE(x) abs((x))



@interface classA : NSObject
{
    int x;
}

-(void)setX;
-(void)print;

@end

@interface classB : classA

-(void)setX;

@end

//implement section
@implementation classA

-(void)setX
{
    x=10;
}

-(void)print
{
    NSLog(@"x=%i",x);
}
@end

@implementation classB

-(void)setX
{
    x=20;
}

@end

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        classA *a=[[classA alloc]init];
        [a setX];
        [a print];
        
        classB *b=[[classB alloc]init];
        [b setX];
        [b print];
        
        int i=1;
        int j=2;
        int k=3;
        int minVal=MIN(i, j);
        NSLog(@"%d",minVal);
        int maxVal=MAX3(i, j, k);
        
        if(IS_SPECIAL('@'))
            NSLog(@"%d",abs(3+1));
        
    }
    return 0;
}

