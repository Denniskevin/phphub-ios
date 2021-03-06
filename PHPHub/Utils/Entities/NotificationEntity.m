//
//  NotificationEntity.m
//  PHPHub
//
//  Created by Aufree on 9/26/15.
//  Copyright (c) 2015 ESTGroup. All rights reserved.
//

#import "NotificationEntity.h"

@implementation NotificationEntity
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"notificationId" : @"id",
             @"notificationContent" : @"content",
             @"user" : @"user.data",
             };
}

+ (NSValueTransformer *)userJSONTransformer
{
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UserEntity class]];
}
@end