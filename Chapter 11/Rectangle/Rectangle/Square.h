//
//  Square.h
//  Rectangle
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GraphicObject.h"
#import "Rectangle.h"

@interface Square : GraphicObject

@property Rectangle *rect;
-(void)setSide:(float)s;
-(float) side;

-(Square *)initWithSide:(float)s;
-(float)area;
-(float)perimeter;

@end
