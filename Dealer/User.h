//
//  User.h
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface User : NSObject

//User名字
@property (nonatomic ,strong) NSString *name;

//新建用户
-(id)initWithName:(NSString *)name;

//User收到一张牌
-(void)addCard:(Card *)card;

//User所有的牌
-(NSArray *)allUserCards;

//打印用户所有的牌
-(void)prinAllUserCards;

@end
