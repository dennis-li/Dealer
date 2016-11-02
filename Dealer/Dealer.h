//
//  Dealer.h
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Dealer : NSObject

//放一张牌进入发牌器
-(void)addCard:(Card *)card;

//随机抽出一张牌
-(Card *)drawRandomCard;

@end
