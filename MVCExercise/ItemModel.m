//
//  ItemModel.m
//  MVCExercise
//
//  Created by Josh Dee on 10/13/14.
//  Copyright (c) 2014 Klab Cyscorpions. All rights reserved.
//

#import "ItemModel.h"

@implementation ItemModel
-(id) initWithDictionary:(NSDictionary *)dict
{
    ItemModel *itemModel = [[ItemModel alloc] init];
    itemModel.itemTitle = [dict objectForKey:@"itemTitle"];
    itemModel.itemImage = [dict objectForKey:@"itemImage"];
    itemModel.description = [dict objectForKey:@"description"];
    itemModel.itemCategory = [dict objectForKey:@"itemCategory"];
    
    return itemModel;
}
@end
