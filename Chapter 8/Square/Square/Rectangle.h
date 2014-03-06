//
//  Rectangle.h
//  Rectangle
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
@property int width,height;

-(void) setWidth:(int) width andHeight:(int) height;
-(int) area;
-(int) perimeter;
@end
