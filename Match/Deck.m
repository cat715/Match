//
//  Deck.m
//  Match
//
//  Created by CAT on 13-12-11.
//  Copyright (c) 2013年 Bian GuanLin. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;//of Card
@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    //All properties start out with a value of 0(called nil)
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }

}


- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    //drawRandomCard simply grabs a card from a random spot in our self.cards array.
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    
    return randomCard;
}
@end
