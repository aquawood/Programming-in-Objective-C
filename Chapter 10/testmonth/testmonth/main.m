//
//  main.m
//  testmonth
//
//  Created by Gong heng on 12-8-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        enum month{
            January=1,Febuary,March,April,May,June,July,August,September,Orctober,November,December
        };
        enum month amonth;
        int days;
        NSLog(@"enter the month:");
        scanf("%i",&amonth);
        switch(amonth){
            case January:
            case March:
            case July:
            case August:
            case Orctober:
            case December:
                days=31;
                break;
            case April:
            case June:
            case September:
            case November:
                days=30;
                break;
            case Febuary:
                days=28;
                break;
            default:
                NSLog(@"wrong month number!");
                days=0;
                break;
        }
        if (days!=0) {
            NSLog(@"the days in this month is %i",days);
        }
        if (days==28) {
            NSLog(@"or =29 if it is a leap year");
        }

        
        typedef enum {Monday=1,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday} day;
        day aday;
        scanf("%i",&aday);
        switch (aday) {
            case Monday:
                NSLog(@"it's Monday!");
                break;
                
            default:
                break;
        }
        
short int i=100;
        NSLog(@"%g                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  aaer45tg5",i*2.);
        
    }
    return 0;
}

