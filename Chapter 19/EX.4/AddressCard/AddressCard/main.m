//
//  main.m
//  AddressCard
//
//  Created by Gong heng on 12-8-21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
#import "AddressCard.h"
#import "AddressBook.h"
#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //AddressCard *card1=[[AddressCard alloc]init];
        NSString *firstname1=@"Wesley";
        NSString *lastname1=@"Gong";
        NSString *email1=@"gongheng.ozzy@gmail.com";
        NSString *address1=@"super crappy town";
        NSString *phone1=@"8147532423";
        AddressCard *card1=[[AddressCard alloc]initWithfirstName:firstname1 andlastName:lastname1 andEmail:email1 andAddress:address1 andPhone:phone1];
        //[card1 setName:name1 andEmail:email1 andAddress:address1 andPhone:phone1];
        
        NSString *firstname2=@"Jessie";
        NSString *lastname2=@"Yang";
        NSString *email2=@"jxy@gmail.com";
        NSString *address2=@"NYC";
        NSString *phone2=@"198888888";
        AddressCard *card2=[[AddressCard alloc]initWithfirstName:firstname2 andlastName:lastname2 andEmail:email2 andAddress:address2 andPhone:phone2];
        
        NSString *firstname3=@"Jiaxi";
        NSString *lastname3=@"Yang";
        NSString *email3=@"jxy@gmail.com";
        NSString *address3=@"NYC";
        NSString *phone3=@"198888888";
        AddressCard *card3=[[AddressCard alloc]initWithfirstName:firstname3 andlastName:lastname3 andEmail:email3 andAddress:address3 andPhone:phone3];
        

        [card1 print];
        [card2 print];
        [card3 print];
        
        
        
        NSString *bookname1=@"book1";
        AddressBook *book1=[[AddressBook alloc]initWithName:bookname1];
        NSLog(@"cards in book1 before adding %lu",[book1 entries]);

        [book1 addCard:card1];
        [book1 addCard:card2];
        [book1 addCard:card3];
        [card1 setFirstname:@"Wellis"];
        NSLog(@"cards in book1 after adding %lu",[book1 entries]);

        [book1 list];
        NSLog(@"====================devide============");
        NSMutableArray *mycard=[NSMutableArray array];
        mycard=[book1 lookup:@"gong"];
        
        if (mycard.count) {
            for(AddressCard *card in mycard){
                [card print];
            }
        }
        else {
            NSLog(@"not found");
        }
        
        //[book1 removeCard:card1];
        /*
         [book1 list];
         [book1 sort];
         [book1 list];

         [book1 blockSort];
         [book1 list];
         */
        NSLog(@"=======devide=======");
        
        if ([book1 removeName:@"yang"]==YES) {
            NSLog(@"deleted");
        }
        else
            NSLog(@"not found or mutiple matches");
        [book1 list];
        
        
        NSMutableArray *mCard=[NSMutableArray array];
        
        //mCard=[book1 lookupAll:@"gong"];
        if (mCard!=nil) {
            for(AddressCard *icard in mCard)
                [icard print];
        }
        else {
            NSLog(@"not found");
        }
        NSLog(@"=====devide=========");
        AddressBook *bookcopy=[book1 copy];
        [bookcopy list];
        
        
        if ([NSKeyedArchiver archiveRootObject:book1 toFile:@"book1.arch"]==NO) {
            NSLog(@"write to fiel failed!");
        }
        
        AddressBook *bookarch=[NSKeyedUnarchiver unarchiveObjectWithFile:@"book1.arch"];
        
        [bookarch list];
        [bookarch sort];
        [bookarch list];
        
        NSMutableData *dataArea=[NSMutableData data];
        
        NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc]initForWritingWithMutableData:dataArea];
        [archiver encodeObject:book1 forKey:@"mybook1"];
        [archiver encodeObject:card1 forKey:@"mycard1"];
        [archiver finishEncoding];
        
        if ([dataArea writeToFile:@"myArchive" atomically:YES]==NO) {
            NSLog(@"write to file failed!");
        }
        
        NSMutableData *DataOut=[NSMutableData data];
        DataOut=[NSMutableData dataWithContentsOfFile:@"myArchive"];
        
        NSKeyedUnarchiver *unarchiver=[[NSKeyedUnarchiver alloc]initForReadingWithData:DataOut];
        
        AddressBook *booka=[unarchiver decodeObjectForKey:@"mybook1"];
        AddressCard *carda=[unarchiver decodeObjectForKey:@"mycard1"];
        [unarchiver finishDecoding];
        [booka list];
        [carda print];
        
        //NSIndexSet *matches=[book1 lookupAll:@"gongheng.ozzy@gmail.com"];
                        
    }
    return 0;
}

