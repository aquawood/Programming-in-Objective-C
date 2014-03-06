//
//  Circle.m
//  Rectangle
//
//  Created by Gong heng on 12-8-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Circle.h"

@implementation Circle
@synthesize radius;

-(float) area
{
    return radius*radius*3.141592;
}

-(float) perimeter
{
    return 2*3.141592*radius;
}
@end
