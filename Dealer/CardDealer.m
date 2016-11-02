//
//  CardDealer.m
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "CardDealer.h"
#import "PlayingCard.h"

@implementation CardDealer

- (id)init
{
    //对self赋值，调用父类方法初始化器
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard allSuits]) {
            for (NSUInteger rank=1; rank<=[PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
