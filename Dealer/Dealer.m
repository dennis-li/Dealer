//
//  Dealer.m
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "Dealer.h"

@interface Dealer ()

//发牌器的数据源
@property (nonatomic ,strong)NSMutableArray *cards;

@end

@implementation Dealer

-(NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

//放一张牌进入发牌器
-(void)addCard:(Card *)card
{
    if (card) {
        [self.cards addObject:card];
    }
}

//随机抽出一张牌
-(Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
