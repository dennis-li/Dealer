//
//  Card.h
//  Dealer
//
//  Created by lixu on 16/11/1.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

//牌的内容由花色，和牌面值组成
@property (strong, nonatomic)NSString *contents;

@end
