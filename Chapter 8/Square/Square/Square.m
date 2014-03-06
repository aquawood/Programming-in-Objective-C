//
//  Square.m
//  Rectangle
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void)setSides:(int)s
{
    [self setWidth:s andHeight:s];
}

-(int)side
{
    return self.width;
}

@end
