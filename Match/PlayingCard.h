//
//  PlayingCard.h
//  Match
//
//  Created by CAT on 13-12-11.
//  Copyright (c) 2013年 Bian GuanLin. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger) maxRank;

//NSUInteger is a typedef for an unsigned integer.
@end
