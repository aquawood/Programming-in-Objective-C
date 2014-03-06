//
//  Square.m
//  Rectangle
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Square.h"
#import "Rectangle.h"

@implementation Square
@synthesize rect;

-(void)setSide:(float)s
{   
    [rect setWidth:s andHeight:s];
}

-(float)side
{
    return [rect width];
}
-(id)init
{
    return [self initWithSide:0.];
}
-(Square *)initWithSide:(float)s
{
    self=[super init];
    if (self) {
        if ( !rect )
            rect = [[Rectangle alloc] init]; 
        
        [rect setWidth:s andHeight:s];
    }
    return self;
}
-(float)area
{   
    return [rect area];
}
-(float)perimeter
{   
    
    return [rect perimeter];
}

@end
