//
//  Deck.h
//  Match
//
//  Created by CAT on 13-12-11.
//  Copyright (c) 2013年 Bian GuanLin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
