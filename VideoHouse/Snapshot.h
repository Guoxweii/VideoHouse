//
//  Snapshot.h
//  VideoHouse
//
//  Created by gxw on 14/10/26.
//  Copyright (c) 2014年 b-star. All rights reserved.
//

#import "ActiveRecord.h"

@interface Snapshot : ActiveRecord
@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) NSString *prefix;
@property (nonatomic,retain) NSString *path;
@end
