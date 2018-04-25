//
//  NSArray+Functions.h
//  Collection+Functions
//
//  Created by Topband on 2018/4/25.
//  Copyright © 2018年 Ramon. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSArray<ObjectType> (Functions)

- (NSArray *)map:(id (NS_NOESCAPE ^)(ObjectType))transform;

- (NSArray<ObjectType> *)filter:(BOOL (NS_NOESCAPE ^)(ObjectType))transform;

//没找到返回: NSNotFound
- (NSInteger)indexOfFilter:(BOOL (NS_NOESCAPE ^)(ObjectType))transform;

@end
NS_ASSUME_NONNULL_END
