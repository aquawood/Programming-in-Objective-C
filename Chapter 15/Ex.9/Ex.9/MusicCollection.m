//
//  MusicCollection.m
//  Ex.9
//
//  Created by Gong heng on 12-8-27.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import "MusicCollection.h"

@implementation MusicCollection
@synthesize cName,pList,library;

-(id)init
{
    return [self initWithName:@"unKnown"];
}

-(id)initWithName:(NSString *)theName
{
    self=[super init];
    if (self) {
        cName=[NSString stringWithString:theName];
        pList=[NSMutableArray array];
        library=[[playlist alloc]initWithName:@"library"];
    }
    return self;
}

-(void)addplayList:(playlist *)theList
{
    if ([pList containsObject:theList]==NO) {
        [pList addObject:theList];
        
        for(Song *item in theList.list)
        {
            if ([library.list containsObject:item]==NO) {
                [library addSong:item];
                item.count--;
            }
        }
    }
}

-(void)removeList:(playlist *)theList
{
    [pList removeObject:theList];
    for(Song *item in theList.list)
    {
        item.count--;
    }
    for(Song *item in library.list)
    {
        if (item.count==0) {
            [library.list removeObject:item];
        }
    }
    
    /*
    int i=0;
    for(Song *item in theList.list)
    {
        for (playlist *lists in pList)
        {
            if (([lists isEqual:theList]==NO)&&([lists.list containsObject:item]==YES)) {
                i++;
            }
        }
        
        if (i==0) {
            [library removeSong:item];
        }

    }
    */
    
    
}

-(void)display
{
    NSLog(@"============Music Collection-%@==============",cName);
    for(playlist *list in pList)
    {
        NSLog(@"============PlayList-%@=================",list.name);
        [list showList];
        NSLog(@"===============List End=========================");
    }
    NSLog(@"=================Collection End======================");
        
}

-(MusicCollection *)lookup:(NSString *)theName
{
    MusicCollection *matches=[[MusicCollection alloc]initWithName:@"matches"];
    for(playlist *list in pList)
    {
        NSRange substr1=[[list.name lowercaseString]rangeOfString:[theName lowercaseString]];
        if (substr1.location!=NSNotFound) {
            [matches addplayList:list];
        }
    }
    return matches;
}

-(void)removeSong:(Song *)theName
{
    for(playlist *list in pList)
    {
        [list removeSong:theName];
    }
    theName.count=0;
}



@end
