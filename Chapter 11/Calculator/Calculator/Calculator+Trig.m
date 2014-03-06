//
//  Calculator+Trig.m
//  Calculator
//
//  Created by Gong heng on 12-8-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Calculator+Trig.h"

@implementation Calculator (Trig)
-(double)sin
{
    return sin(self.accumulator);
}
-(double) cos
{
    return cos(self.accumulator);
}
-(double)tan
{
    return tan(self.accumulator);
}

@end
