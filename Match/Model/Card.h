//
//  Card.h
//  Match
//
//  Created by CAT on 13-11-3.
//  Copyright (c) 2013年 Bian GuanLin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString * contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL mathched;

- (int) match:(NSArray *) otherCards;

@end
