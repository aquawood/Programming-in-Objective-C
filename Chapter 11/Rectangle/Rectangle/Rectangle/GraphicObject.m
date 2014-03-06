//
//  GraphicObject.m
//  Rectangle
//
//  Created by Gong heng on 12-8-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject

@synthesize  fillColor,lineColor;
@synthesize  filled;


-(void)setFillColor:(int)fc andlineColor:(int)lc andfilled:(BOOL)f
{
    fillColor=fc;
    lineColor=lc;
    filled=f;
}

@end