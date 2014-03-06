//
//  main.m
//  Ex.9
//
//  Created by Gong heng on 12-8-26.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import "Song.h"
#import "playlist.h"
#import "MusicCollection.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Song *song1=[[Song alloc]initWithTitle:@"win" andArtist:@"Wesley" andAlbum:@"the King" andPlaytime:@"100 years"];
        //[song1 print];
        Song *song2=[[Song alloc]initWithTitle:@"touhou" andArtist:@"Zun" andAlbum:@"anoya" andPlaytime:@"1000 years"];
        //[song2 print];
        
        Song *song3=[[Song alloc]initWithTitle:@"cirno" andArtist:@"Zun" andAlbum:@"toho" andPlaytime:@"10000 years"];
        
        Song *song4=[[Song alloc]initWithTitle:@"marisa" andArtist:@"Zun" andAlbum:@"toho" andPlaytime:@"10000 years"];
        
        playlist *list1=[[playlist alloc]initWithName:@"list1"];
        //[list1 addSong:song1];
        [list1 addSong:song2];
        [list1 addSong:song3];
        [list1 addSong:song4];
        
        playlist *list2=[[playlist alloc]initWithName:@"list2"];
        [list2 addSong:song1];
        [list2 addSong:song2];
        [list2 addSong:song3];
        [list2 addSong:song4];
        [list2 removeSong:song4];
        
        NSLog(@"%lu",[list1 entries]);
        
        [list1 showList];
        
        //[list1 removeSong:song1];
        NSLog(@"%lu",[list1 entries]);
    
        MusicCollection *collection1=[[MusicCollection alloc]initWithName:@"collection1"];
        [collection1 addplayList:list1];
        [collection1 addplayList:list2];
        
        //[collection1 removeList:list2];
        
        [collection1 display];
        [collection1.library showList];
        NSLog(@"========================");

        playlist *matches=[list1 songlookup:@"toho"];
        [matches showList];
        
        MusicCollection *m=[collection1 lookup:@"list"];
        [m display];
        
        [collection1 removeSong:song1];
        [collection1 display];
        [list2 showList];
    }
    return 0;
}

