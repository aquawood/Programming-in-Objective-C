//
//  MusicCollection.h
//  Ex.9
//
//  Created by Gong heng on 12-8-27.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//
#import "Song.h"
#import "playlist.h"
#import <Foundation/Foundation.h>

@interface MusicCollection : NSObject
@property (nonatomic,copy)NSString *cName;
@property (nonatomic,strong)NSMutableArray *pList;
@property (nonatomic,copy)playlist *library;

-(id)init;
-(id)initWithName:(NSString *)theName;
-(void)addplayList:(playlist *)theList;
-(void)removeList:(playlist *)theList;
-(void)display;

-(MusicCollection *)lookup:(NSString *)theName;
-(void)removeSong:(Song *)theName;

@end
