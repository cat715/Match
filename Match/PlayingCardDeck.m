//
//  PlayingCardDeck.m
//  Match
//
//  Created by CAT on 13-12-11.
//  Copyright (c) 2013年 Bian GuanLin. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    //This is the ONLY time you would ever assign sth to self.
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return  self;
}

@end
