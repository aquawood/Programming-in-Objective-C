//
//  main.m
//  Rectangle
//
//  Created by Gong heng on 12-8-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"
#import "Circle.h"
#import "Triangle.h"



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        id dataValue;
        
        Rectangle *myRec=[[Rectangle alloc]init];
        
        //[myRec setWidth:10 andHeight:10];
        NSLog(@"for a rectangle width %f width and %f height, its area is %f and perimeter is %f",myRec.width,myRec.height,[myRec area],[myRec perimeter]);
        
        [myRec draw];
        
        XYPoint *myPoint=[XYPoint new];
        [myPoint setX:10 andY:10];
        dataValue=myPoint;
        
        
        myRec.origin=myPoint;
        
        //[myRec translate:myRec.origin];
        
        NSLog(@"the origin for the first rectangle is:");
        [dataValue print];
        
        Rectangle *rec1=[Rectangle new];
        [rec1 setWidth:10 andHeight:10];
        XYPoint *point1=[XYPoint new];
        [point1 setX:1 andY:1];
        rec1.origin=point1;
        dataValue=point1;
        NSLog(@"the origin for the added rectangle is:");
        [dataValue print];
        Rectangle *interRec=[myRec intersect:rec1];
        
        NSLog(@"intersect rec w=%f,h=%f,and origin is (%f,%f)",interRec.width,interRec.height,interRec.origin.x,interRec.origin.y);
        dataValue=interRec.origin;
        [dataValue print];
        
        Square *mysquare=[[Square alloc]initWithSide:30];
        //[mysquare setSide:20.0];
        NSLog(@"the square width:%f, height:%f,area=%f,perimeter=%f",mysquare.side,mysquare.side,mysquare.area,mysquare.perimeter);
        

        
        /*
        //-----------point contain----------------
        XYPoint *onePoint=[XYPoint new];
        [onePoint setX:105 andY:210];
        
        
        if ([myRec containPoint:onePoint]==YES) {
            NSLog(@"the point is contained!");
        }
        
        else {
            NSLog(@"the point is not contained!");
        }
        
        [myRec setFillColor:2 andlineColor:3 andfilled:YES];
        NSLog(@"fillColor is %i,lineColor is %i",myRec.fillColor,myRec.lineColor);
        
        //----------square section---------------------
        Square *mySquare=[Square new];
        [mySquare setSide:20];
        NSLog(@"for a Square side=%f, its area is %f and perimeter is %f",mySquare.side,[mySquare area],[mySquare perimeter]);
        
        //----------triangle section---------------------
        Triangle *myTriangle=[Triangle new];
        [myTriangle setBase:10 andHeight:20];
        NSLog(@"a triangle with base=%f and height=%f, its area=%f, perimeter=%f",[myTriangle base],[myTriangle height],[myTriangle area],[myTriangle perimeter]);

        //----------circle section---------------------
        Circle *myCircle=[[Circle alloc]init];
        [myCircle setRadius:3];
        NSLog(@"a circle with radius=%f, its area=%f,and perimeter=%f",[myCircle radius],[myCircle area],[myCircle perimeter]);
        */
        
    Rectangle *reccopy=[[Rectangle alloc]init];
    reccopy=[rec1 copy];
    NSLog(@"w:%f,h:%F",[reccopy width],[reccopy height]);
    
    [reccopy.origin print];
    }
    
    return 0;
}