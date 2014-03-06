//
//  main.m
//  PathOpt
//
//  Created by Gong heng on 12-8-30.
//  Copyright (c) 2012年 Gong heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *fName=@"path.m";
        NSString *tempDir,*path,*extension,*homeDir,*fullpath;
        
        NSArray *components;
        
        NSFileManager *fm=[NSFileManager defaultManager];
        
        tempDir=NSTemporaryDirectory();
        NSLog(@"the temporary dir is %@",tempDir);
        
        path=[fm currentDirectoryPath];
        NSLog(@"the base dir is %@",[path lastPathComponent]);
        
        fullpath=[path stringByAppendingPathComponent:fName];
        extension=[fullpath pathExtension];
        NSLog(@"the extension of %@ is %@",fName,extension);
        
        //get user's home dir
        homeDir=NSHomeDirectory();
        NSLog(@"the home dir is %@",homeDir);
        
        //divide path into components
        components=[homeDir pathComponents];
        for(path in components)
        {
            NSLog(@"%@",path);
        }
        NSLog(@"============");
        
        
        
        
        
    }
    return 0;
}

