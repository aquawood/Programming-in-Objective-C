//
//  main.m
//  ex.1
//
//  Created by Gong heng on 12-8-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface NSDate (ElapsedDays)
-(unsigned long) elapsedDays:(NSDate *)theDate;
@end

@implementation NSDate (ElapsedDays)
-(unsigned long)elapsedDays:(NSDate *)theDate
{
    unsigned long s=abs((abs([self timeIntervalSince1970])-abs([theDate timeIntervalSince1970]))/(3600*24));
    return s;
}
@end


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *date1=[NSDate dateWithNaturalLanguageString:@"2/3/1960"];
        NSDate *date2=[NSDate dateWithNaturalLanguageString:@"02/30/1960"];
        NSLog(@"%li",[date1 elapsedDays:date2] );
        
    }
    return 0;
}

