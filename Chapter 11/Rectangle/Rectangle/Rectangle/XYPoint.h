//
//  XYPoint.h
//  Rectangle
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject<NSCopying>

@property float x,y;
-(void)print;
-(void) setX:(float)xVal andY:(float)yVal;

@end
