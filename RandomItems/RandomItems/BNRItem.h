//
//  BNRItem.h
//  RandomItems
//
//  Created by Josh Dee on 9/18/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic , strong)BNRItem *containedItem;
@property (nonatomic , weak)BNRItem *container;
@property (nonatomic, copy)NSString *itemName;
@property (nonatomic, copy)NSString *serialNumber;
@property (nonatomic)int valueInDollars;
@property (nonatomic , readonly, strong)NSDate *dateCreated;


+ (instancetype)randomItem;

// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;


@end
