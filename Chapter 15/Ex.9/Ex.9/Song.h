//
//  Song.h
//  Ex.9
//
//  Created by Gong heng on 12-8-26.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Song : NSObject
@property (copy,nonatomic)NSString *title,*artist,*album,*playtime;
@property int count;
@property (copy,nonatomic)NSMutableArray *info;

-(void)setTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlaytime:(NSString *)thePlaytime;
-(id)init;
-(id)initWithTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlaytime:(NSString *)thePlaytime;
-(void)print;


@end
