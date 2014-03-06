//
//  main.m
//  pointerTest
//
//  Created by Gong heng on 12-8-18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

void exchange(int *pt1,int *pt2)
{
    int temp;
    temp=*pt1;
    *pt1=*pt2;
    
    *pt2=temp;
}



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int i=10,j=20,*pt1=&i,*pt2=&j;
        
        exchange(pt1,pt2);
        //
        NSLog(@"point1=%i,point2=%i",i,j);
        //exchange(&i,&j);
        NSLog(@"i=%i,j=%i",i,j);
        
    }
    return 0;
}

