//
//  Triangle.h
//  Rectangle
//
//  Created by Gong heng on 12-8-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GraphicObject.h"

@interface Triangle : GraphicObject
@property float base,height;
-(void)setBase:(float)b andHeight:(float)h;
-(float) area;
-(float) perimeter;

@end
