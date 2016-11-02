//
//  main.m
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardDealer.h"
#import "User.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //用户数
        NSInteger userCount = 4;
        
        //用户数组
        NSMutableArray *users = [[NSMutableArray alloc] init];
        
        //初始化发牌器
        CardDealer *dealer = [[CardDealer alloc] init];
        
        //新建四个用户
        for (NSInteger i = 0; i < 4; i++) {
            NSString *name = [NSString stringWithFormat:@"user%ld",i];
            User *user = [[User alloc] initWithName:name];
            [users addObject:user];
        }
        
        //随机发牌
        Card *card;
        while ((card = [dealer drawRandomCard])) {
            NSInteger key = arc4random() % userCount;
            User *user = [users objectAtIndex:key];
            [user addCard:card];
        }
        
        //每个用户打印出所有的牌
        for (User *user in users) {
            [user prinAllUserCards];
        }
        
    }
    return 0;
}
