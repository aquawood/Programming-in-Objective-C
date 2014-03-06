//
//  Rectangle.m
//  Rectangle
//
//  Created by Gong heng on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
    XYPoint *translate;
}

@synthesize width,height,containPoint;


-(void)setWidth:(float) w andHeight:(float) h
{
    width=w;
    height=h;
    
}

-(id)initWithWidth:(float) w andHeight:(float) h
{
    self=[super init];
    if (self) {
        [self setWidth:(float) w andHeight:(float) h];
    }
    
    return self;
}
-(id)init
{
    return [self initWithWidth:0 andHeight:0];
}

-(void)setOrigin:(XYPoint *)pt
{
    if (!origin) {
        origin=[[XYPoint alloc]init ];
    }
    origin.x=pt.x;
    origin.y=pt.y;
}

-(float) area
{
    return width*height;
}
-(float) perimeter
{
    return 2*(width+height);
}
-(XYPoint *) origin
{
    
    return origin;
}

-(void)translate:(XYPoint *)pt
{    
    //move by vector(-10,20)
    origin.x=pt.x-10;
    origin.y=pt.y+20;
}
-(BOOL)containPoint:(XYPoint *)apoint
{
    if ((apoint.x>=origin.x)&&(apoint.y>=origin.y)&&(apoint.x<=origin.x+width)&&(apoint.y<=origin.y+height)) {
        containPoint=YES;
        return containPoint;
    }
    else {
        containPoint=NO;
        return containPoint;
    }
}

-(Rectangle *)intersect:(Rectangle *)rec
{
    XYPoint *p1=[XYPoint new];
    p1.x=origin.x+width;
    p1.y=origin.y+height;
    
    XYPoint *p2=[XYPoint new];
    p2.x=rec.origin.x+rec.width;
    p2.y=rec.origin.y+rec.height;
    Rectangle *intersectRec=[[Rectangle alloc]init];
    if ((rec.origin.x<=p1.x)&&(p2.y>=origin.y)&&(p2.x>=origin.x)&&(rec.origin.y<=p1.y)) {
        NSLog(@"these two intersect!");
        
        if (([self containPoint:rec.origin]==YES)&&([self containPoint:p2]==YES)){
            intersectRec=rec;            
        }
        //--------------------------------------------
        if ((rec.origin.x>=origin.x)&&(rec.origin.x<=p1.x)&&(rec.origin.y<=origin.y)&&(p2.x<=p1.x)&&(p2.y>=p1.y)) {
            intersectRec.width=rec.width;
            intersectRec.height=self.height;
            intersectRec.origin.x=rec.origin.x;
            intersectRec.origin.y=self.origin.y;
        }
        if ((rec.origin.x>=origin.x)&&(rec.origin.x<=p1.x)&&(rec.origin.y<=origin.y)&&(p2.x>=p1.x)&&(p2.y>=p1.y)) {
            intersectRec.width=p1.x-rec.origin.x;
            intersectRec.height=self.height;
            intersectRec.origin.x=rec.origin.x;
            intersectRec.origin.y=self.origin.y;
        }
        if ((rec.origin.x>=origin.x)&&(rec.origin.x<=p1.x)&&(rec.origin.y<=origin.y)&&(p2.x>=p1.x)&&(p2.y<=p1.y)) {
            intersectRec.width=p1.x-rec.origin.x;
            intersectRec.height=p2.y-origin.y;
            intersectRec.origin.x=rec.origin.x;
            intersectRec.origin.y=self.origin.y;
        }
        
        if ((rec.origin.x>=origin.x)&&(rec.origin.x<=p1.x)&&(rec.origin.y<=origin.y)&&(p2.x<=p1.x)&&(p2.y<=p1.y)) {
            intersectRec.width=rec.width;
            intersectRec.height=p2.y-origin.y;
            intersectRec.origin.x=rec.origin.x;
            intersectRec.origin.y=self.origin.y;
        }
        //---------------------------------------------
        if ((rec.origin.x<=origin.x)&&(rec.origin.y<=origin.y)&&(p2.x<=p1.x)&&(p2.y>=p1.y)) {
            intersectRec.width=p2.x-origin.x;
            intersectRec.height=self.height;
            intersectRec.origin=origin;
        }
        if ((rec.origin.x<=origin.x)&&(rec.origin.y<=origin.y)&&(p2.x>=p1.x)&&(p2.y>=p1.y)) {
            intersectRec=self;
            
        }
        if ((rec.origin.x<=origin.x)&&(rec.origin.y<=origin.y)&&(p2.x>=p1.x)&&(p2.y<=p1.y)) {
            intersectRec.width=self.width;
            intersectRec.height=p2.y-origin.y;
            intersectRec.origin=origin;
        }
        if ((rec.origin.x<=origin.x)&&(rec.origin.y<=origin.y)&&(p2.x<=p1.x)&&(p2.y<=p1.y)) {
            intersectRec.width=p2.x-origin.x;
            intersectRec.height=p2.y-origin.y;
            intersectRec.origin=origin;
        }
        //----------------------------------------------
        if ((rec.origin.x<=origin.x)&&(rec.origin.y>=origin.y)&&(p2.x<=p1.x)&&(p2.y>=p1.y)) {
            intersectRec.width=p2.x-origin.x;
            intersectRec.height=p1.y-rec.origin.y;
            intersectRec.origin.x=origin.x;
            intersectRec.origin.y=rec.origin.y;
        }
        if ((rec.origin.x<=self.origin.x)&&(rec.origin.y>=origin.y)&&(p2.x>=p1.x)&&(p2.y>=p1.y)) {
            intersectRec.width=self.width;
            intersectRec.height=p1.y-rec.origin.y;
            intersectRec.origin.x=origin.x;
            intersectRec.origin.y=rec.origin.y;
        }
        if ((rec.origin.x<=origin.x)&&(rec.origin.y>=origin.y)&&(p2.x>=p1.x)&&(p2.y<=p1.y)) {
            intersectRec.width=self.width;
            intersectRec.height=rec.height;
            intersectRec.origin.x=origin.x;
            intersectRec.origin.y=rec.origin.y;
        }
        if ((rec.origin.x<=origin.x)&&(rec.origin.y>=origin.y)&&(p2.x<=p1.x)&&(p2.y<=p1.y)) {
            intersectRec.width=p2.x-rec.origin.x;
            intersectRec.height=rec.height;
            intersectRec.origin.x=origin.x;
            intersectRec.origin.y=rec.origin.y;
        }
        //----------------------------------------------
        if(([self containPoint:rec.origin]==YES)&&(p2.x<=p1.x)&&(p2.y>=p1.y)){
            intersectRec.width=rec.width;
            intersectRec.height=p1.y-rec.origin.y;
            intersectRec.origin=rec.origin;
        }
        if(([self containPoint:rec.origin]==YES)&&(p2.x>=p1.x)&&(p2.y>=p1.y)){
            intersectRec.width=p1.x-rec.origin.x;
            intersectRec.height=p1.y-rec.origin.y;
            intersectRec.origin=rec.origin;

        }
        if(([self containPoint:rec.origin]==YES)&&(p2.x>=p1.x)&&(p2.y<=p1.y)){
            intersectRec.width=p1.x-rec.origin.x;
            intersectRec.height=p1.y-rec.origin.y;
            intersectRec.origin=rec.origin;

        }
        //----------------------------------------------
                
    }
    else {
        NSLog(@"no!");
    
    }
    return intersectRec;
}

-(void)draw
{
    for (int i=1; i<=width; i++) {
        printf("-");
    }
    printf("\n");
    
    for (int i=1; i<=height; i++) {
        for (int j=1; j<=width; j++) {
            if ((j==1)||(j==width)) {
                printf("|");
            }
            else
                printf(" ");
        }
        printf("\n");
    }
    for (int i=1; i<=width; i++) {
        printf("-");
    }

    
    printf("\n");
    
    
}

-(id)copyWithZone:(NSZone *)zone
{
    Rectangle *result=[[Rectangle allocWithZone:zone]init];
    result.origin=[origin copy];
    [result setWidth:width andHeight:height];
    
    return result;
}


@end
