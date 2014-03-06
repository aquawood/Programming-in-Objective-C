//
//  playlist.m
//  Ex.9
//
//  Created by Gong heng on 12-8-26.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import "playlist.h"

@implementation playlist
@synthesize name,list;

-(void)addSong:(Song *) theSong
{
    [list addObject:theSong];
    theSong.count++;
    
}

-(void)removeSong:(Song *) theSong
{
    [list removeObject:theSong];
    theSong.count--;
}

-(void)showList
{
    for(Song *item in list)
    {
        [item print];
    }

}

-(id)init
{
    return [self initWithName:@"Unknown"];
}

-(id)initWithName:(NSString *)theName
{
    self=[super init];
    if (self) {
        name=[NSString stringWithString:theName];
        list=[NSMutableArray array];
    }
    return self;
}

-(NSUInteger)entries
{
    return [list count];
}

-(playlist *)songlookup:(NSString *)theName
{
    playlist *matches=[[playlist alloc]initWithName:@"matches"];
    for(Song *item in list)
    {
        for(NSString *field in item.info)
        {
            NSRange substr=[[field lowercaseString] rangeOfString:[theName lowercaseString]];
            if (substr.location!=NSNotFound) {
                [matches.list addObject:item];
            }
            
        }

    }
    return matches;
}

@end
