//
//  Card.m
//  Match
//
//  Created by CAT on 13-11-3.
//  Copyright (c) 2013年 Bian GuanLin. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *) otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}
@end
