//
//  playlist.h
//  Ex.9
//
//  Created by Gong heng on 12-8-26.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//
#import "Song.h"
#import <Foundation/Foundation.h>

@interface playlist : NSObject
@property (copy,nonatomic)NSString *name;
@property (nonatomic,strong)NSMutableArray *list;
-(void)addSong:(Song *)theSong;
-(void)removeSong:(Song *)theSong;
-(void)showList;
-(id)init;
-(id)initWithName:(NSString *)theName;
-(NSUInteger)entries;

-(playlist *)songlookup:(NSString *)theName;

@end
