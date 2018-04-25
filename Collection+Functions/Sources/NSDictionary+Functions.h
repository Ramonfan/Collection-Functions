//
//  NSDictionary+Functions.h
//  Collection+Functions
//
//  Created by Topband on 2018/4/25.
//  Copyright © 2018年 Ramon. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSDictionary<KeyType, ObjectType> (Functions)

- (NSArray *)map:(id (NS_NOESCAPE^)(KeyType, ObjectType))transform;

- (NSDictionary<KeyType, ObjectType> *)filter:(BOOL (NS_NOESCAPE^)(KeyType, ObjectType))transform;

@end
NS_ASSUME_NONNULL_END
