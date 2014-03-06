//
//  Song.m
//  Ex.9
//
//  Created by Gong heng on 12-8-26.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import "Song.h"

@implementation Song
@synthesize title,album,artist,playtime,info;

-(void)setTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlaytime:(NSString *)thePlaytime
{
    self.title=theTitle;
    self.artist=theArtist;
    self.album=theAlbum;
    self.playtime=thePlaytime;
    self.count=0;
    
    self.info=[NSMutableArray arrayWithObjects:theTitle,theArtist,theAlbum,thePlaytime, nil];
}

-(id)init
{
    return [self initWithTitle:@"unknown" andArtist:@"unknown" andAlbum:@"unknown" andPlaytime:@"unknown"];
}

-(id)initWithTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlaytime:(NSString *)thePlaytime
{
    self=[super init];
    if (self) {
        [self setTitle:theTitle andArtist:theArtist andAlbum:theAlbum andPlaytime:thePlaytime];
    }
    return self;
}

-(void)print
{
    NSLog(@"============%@==========%d===",self.title,self.count);
    for(NSString *field in self.info)
    {
        NSLog(@"%@",field);
    }
    NSLog(@"==============================");
}

@end
