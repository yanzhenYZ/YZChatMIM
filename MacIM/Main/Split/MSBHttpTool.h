//
//  MSBHttpTool.h
//  test
//
//  Created by yanzhen on 2020/9/26.
//  Copyright © 2020 yanzhen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSBHttpTool : NSObject
+ (void)getHttp;
+ (void)getImInfo:(NSString *)userId identity:(int)identity completion:(void (^)(NSDictionary *obj, NSError *error))completion;
@end

