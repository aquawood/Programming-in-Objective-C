//
//  main.m
//  copyString
//
//  Created by Gong heng on 12-8-18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
void copyString(char *to,char *from)
{
    for (; *from!='\0'; from++,to++) {
        *to=*from;
    }
    *to='\0';
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char this[]="hello please copy me";
        char that[100];
        //char *string1=this;
        //char *string2=that;
        copyString(that, this);
        NSLog(@"the string is %s",that);
        copyString(that, "and me");
        NSLog(@"the string is %s",that);

        
    }
    return 0;
}

