//
//  main.m
//  BasicStrOpt
//
//  Created by Gong heng on 12-8-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *str1=@"this is string A";
        NSString *str2=@"this is string B";
        NSString *res;
        NSRange subRange;
        
        NSComparisonResult compareResult;
        
        NSLog(@"the length of str1 is %lu",[str1 length]);
        
        res=[NSString stringWithString:str1];
        
        if ([str1 isEqualToString: res]==YES) {
            NSLog(@"the string is copied as %@",res);
        }
        else {
            NSLog(@"not copied");
        }
        str2=[str1 stringByAppendingString:str2];
        NSLog(@"str2 becomes %@",str2);
        compareResult=[str1 compare: str2];
        
        if (compareResult==-1) {
            NSLog(@"str1 is less that str2");
        }
        else if (compareResult==0) {
            NSLog(@"they are equal");
        }
        else {
            NSLog(@"str1 is greater than str2");
        }
        
        res=[str1 uppercaseString];
        NSLog(@"res = %@",res);
        NSLog(@"res = %s",[res UTF8String]);
        
        res=[str1 lowercaseString];
        NSLog(@"res=%s",[res UTF8String]);
        
        res=[str1 substringToIndex: 4];
        NSLog(@"the first four character of str1 is \"%@\".",res);
        
        res=[[str1 substringFromIndex:5]substringToIndex:9];
        NSLog(@"the string from the fifth character to 9th character is \"%@\".",res);
        
        res=[str1 substringWithRange:NSMakeRange(0, 10)];
        NSLog(@"the string with length 10 started from character 5 is \"%@\"",res);
        
        subRange=[str1 rangeOfString:@"is string"];
        NSLog(@"the substring is at %lu,and with length %lu",subRange.location,subRange.length);
        
        subRange=[str1 rangeOfString:@"string A"];
        if (subRange.location==NSNotFound) {
            NSLog(@"no such string");
        }
        else {
            NSLog(@"sub string at %lu with length %lu",subRange.location,subRange.length);
        }
        
        NSMutableString *mstr;
        NSString *search,*replace;
        NSRange substr;
    
        mstr=[NSMutableString stringWithString:str1];
        NSLog(@"mstr= %@",mstr);
        [mstr insertString:@" mutable" atIndex:7];
        NSLog(@"mstr=%@",mstr);
        [mstr insertString:@" and string B" atIndex:[mstr length]];
        NSLog(@"mstr=%@",mstr);
        [mstr deleteCharactersInRange:NSMakeRange(8, 10)];
        NSLog(@"mstr=%@",mstr);
        substr=[mstr rangeOfString:@"string B"];
        [mstr deleteCharactersInRange:substr];
        if (substr.location!=NSNotFound) {
            NSLog(@"mstr=%@",mstr);
        }
        [mstr setString:@"This is string A"];
        NSLog(@"mstr=%@",mstr);
        [mstr replaceCharactersInRange:NSMakeRange(0, 4) withString:@"(modify)This"];
        NSLog(@"mstr=%@",mstr);
        search=@"This is ";
        replace=@"these are ";
        substr=[mstr rangeOfString:search];
        [mstr replaceCharactersInRange:substr withString:replace];
        NSLog(@"mstr=%@",mstr);
        
        search=@"s";
        replace=@"S";
        substr=[mstr rangeOfString:search];
    while (substr.location!=NSNotFound) {
        [mstr replaceCharactersInRange:substr withString:replace];
        substr=[mstr rangeOfString:search];
    }
    
    NSLog(@"mstr=%@",mstr);
    search=@"e";
    replace=@"E";
    [mstr replaceOccurrencesOfString:search withString:replace options:nil range:NSMakeRange(0,[mstr length])];
    NSLog(@"mstr=%@",mstr);
    }
    return 0;
}

