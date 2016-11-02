//
//  PlayingCard.m
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

//以下类方法只是为了代码简洁，和易读性
+ (NSArray *)allSuits
{
    return @[@"♠︎",@"♣︎",@"♥︎",@"♦︎"];
}

//类方法用于创建牌面
+ (NSArray *)allRankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

//牌面的最大值
+ (NSUInteger)maxRank
{
    return [[self allRankStrings] count]-1;
}

//给出牌面与牌花色的字符串
- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard allRankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

//花色
-(void)setSuit:(NSString *)suit
{
    if ([[PlayingCard allSuits] containsObject:suit]) {
        _suit = suit;
    }
}


- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

//牌面
- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
