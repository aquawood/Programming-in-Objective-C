//
//  GraphicObject.h
//  Rectangle
//
//  Created by Gong heng on 12-8-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
@property int fillColor,lineColor; 
@property BOOL filled;

-(void)setFillColor:(int)fc andlineColor:(int)lc andfilled:(BOOL)f;


@end
