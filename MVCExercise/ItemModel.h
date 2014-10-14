//
//  ItemModel.h
//  MVCExercise
//
//  Created by Josh Dee on 10/13/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemModel : NSObject
@property(nonatomic, retain)NSString *itemTitle;
@property(nonatomic, retain)NSString *itemImage;
@property(nonatomic, retain)NSString *description;
@property(nonatomic, retain)NSString *itemCategory;
-(id) initWithDictionary:(NSDictionary *)dict;
@end
