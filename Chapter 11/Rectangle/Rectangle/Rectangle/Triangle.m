//
//  Triangle.m
//  Rectangle
//
//  Created by Gong heng on 12-8-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
@synthesize base,height;

-(void)setBase:(float)b andHeight:(float)h
{
    base=b;
    height=h;
}
-(float)perimeter
{
    return base*3;
}
-(float)area
{
    return base*height;
}
@end
