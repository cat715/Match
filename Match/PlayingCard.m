//
//  PlayingCard.m
//  Match
//
//  Created by CAT on 13-12-11.
//  Copyright (c) 2013年 Bian GuanLin. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard


- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    //mathch a single card
    if ([otherCards count] == 1) {
        PlayingCard *otherCard = [otherCards firstObject];
        //it will return nil, so it won't crash
        if (otherCard.rank == self.rank) {
            score = 4;
        } else if (otherCard.suit == self.suit) {
            score = 1;
        }
    }
    return score;
}

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    //Let's call this class method
    //Note that we are not required to declare this earlier in the file than we use it.
    
    //return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;
//because you provide setter AND getter
//If you implement BOTH the setter and the getter for a property, then you have to create the instance variable for the property yourself.

+ (NSArray *)validSuits
{
    return @[@"♥️", @"♦️", @"♠️", @"♣️"];
}

- (void)setSuit:(NSString *)suit
{
    //if ([@[@"♥️", @"♦️", @"♠️", @"♣️"] containsObject:suit])
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

//override the getter for suite to make a suite of nil return ?.
 - (NSString *)suit
{
    return _suit ? _suit: @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}


//the max number of Rank
+ (NSUInteger) maxRank
{
    return [[self rankStrings] count] -1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}
@end
