//
//  User.m
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "User.h"

@interface User ()

//用户拥有的牌组
@property (nonatomic ,strong) NSMutableArray *cards;

@end

@implementation User

-(id)initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        if (name) {
            _name = name;
        } else {
            _name = @"user";
        }
    }
    return self;
}

//懒加载牌组
-(NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

//User收到一张牌
-(void)addCard:(Card *)card
{
    if (card) {
        [self.cards addObject:card];
    }
}

//User所有的牌
-(NSArray *)allUserCards
{
    if (!_cards) {
        return nil;
    }else {
        return _cards;
    }
}

//打印用户所有的牌
-(void)prinAllUserCards
{
    NSString *cardsString = @"";
    NSArray *cards;
    if ((cards = [self allUserCards])) {
        for (Card *card in cards) {
            cardsString = [cardsString stringByAppendingString:[card contents]];
        }
    }
    NSLog(@"%@:%@",self.name,cardsString);
}


@end
