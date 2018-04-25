//
//  NSArray+Functions.m
//  Collection+Functions
//
//  Created by Topband on 2018/4/25.
//  Copyright © 2018年 Ramon. All rights reserved.
//

#import "NSArray+Functions.h"

@implementation NSArray (Functions)

- (NSArray *)map:(id  _Nonnull (^)(id _Nonnull))transform {
    NSMutableArray *mAry = [NSMutableArray arrayWithCapacity:self.count];
    for (id item in self) {
        [mAry addObject:transform(item)];
    }
    return mAry;
}

- (NSArray *)filter:(BOOL (NS_NOESCAPE ^)(id _Nonnull))transform {
    NSMutableArray *mAry = [NSMutableArray array];
    for (id item in self) {
        if (transform(item)) {
            [mAry addObject:item];
        }
    }
    return mAry;
}

- (NSInteger)indexOfFilter:(BOOL (^)(id _Nonnull))transform {
    NSInteger index = NSNotFound;
    for (NSInteger i = 0; i < self.count; ++i) {
        if (transform(self[i])) {
            index = i;
            break;
        }
    }
    return index;
}

@end
