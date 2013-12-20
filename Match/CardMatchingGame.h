//
//  CardMatchingGame.h
//  Match
//
//  Created by CAT on 13-12-19.
//  Copyright (c) 2013年 Bian GuanLin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject


//designated initailizer
- (instancetype) initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;

//classes can have multiple initializers, but obviously only one designated initializer
- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
