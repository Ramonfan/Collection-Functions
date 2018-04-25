//
//  NSDictionary+Functions.m
//  Collection+Functions
//
//  Created by Topband on 2018/4/25.
//  Copyright © 2018年 Ramon. All rights reserved.
//

#import "NSDictionary+Functions.h"

@implementation NSDictionary (Functions)

- (NSArray *)map:(id (^)(id, id))transform {
    NSMutableArray *ary = [NSMutableArray arrayWithCapacity:self.count];
    NSArray *keys = self.allKeys;
    for (id key in keys) {
        id value = [self objectForKey:key];
        id result = transform(key, value);
        [ary addObject:result];
    }
    return ary;
}

- (NSDictionary *)filter:(BOOL (NS_NOESCAPE^)(id, id))transform {
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSArray *keys = self.allKeys;
    for (id key in keys) {
        id value = [self objectForKey:key];
        if (transform(key, value)) {
            [dic setObject:value forKey:key];
        }
    }
    return dic;
}

@end
