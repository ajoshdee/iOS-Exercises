//
//  ItemModel.h
//  MVCExercise
//
//  Created by Josh Dee on 10/13/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemModel : NSObject
@property(nonatomic)NSString *itemTitle;
@property(nonatomic)NSString *itemImage;
@property(nonatomic)NSString *description;
@property(nonatomic)NSString *itemCategory;
-(id) initWithDictionary:(NSDictionary *)dict;
@end
