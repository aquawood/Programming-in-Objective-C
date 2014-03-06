//
//  Rectangle.h
//  Rectangle
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GraphicObject.h"
#import "XYPoint.h"
@interface Rectangle : GraphicObject<NSCopying>
@property float width,height;
@property BOOL containPoint;

-(XYPoint *) origin;
-(void) setOrigin:(XYPoint *) pt;
-(void) setWidth:(float) width andHeight:(float) height;
-(float) area;
-(float) perimeter;

-(void)translate:(XYPoint *)pt;
-(BOOL)containPoint:(XYPoint *)apoint;
-(Rectangle *)intersect:(Rectangle *)rec;
-(void)draw;
-(id)initWithWidth:(float) w andHeight:(float) h;
-(id)init;


@end
