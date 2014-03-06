//
//  XYPoint.m
//  Rectangle
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x,y;

-(void)print
{
    NSLog(@"(%f,%f)",x,y);
}

-(void)setX:(float)xVal andY:(float)yVal
{
    x=xVal;
    y=yVal;
}

-(id)copyWithZone:(NSZone *)zone
{
    XYPoint *result=[XYPoint allocWithZone:zone];
    [result setX:x andY:y];
    
    return result;
}

@end
