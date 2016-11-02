//
//  PlayingCard.h
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

//牌的花色
@property (strong, nonatomic) NSString *suit;

//牌的面值
@property (nonatomic) NSUInteger rank;

//花色
+ (NSArray *)allSuits;

//牌面大小
+ (NSArray *)allRankStrings;

//最大牌面
+ (NSUInteger)maxRank;

@end
