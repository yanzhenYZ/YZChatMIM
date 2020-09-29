//
//  YZSplitView.h
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface YZSplitView : NSSplitView
@property (nonatomic) CGFloat minCoordinate;//default is 240
@property (nonatomic) CGFloat maxCoordinate;//default is 300
@end

NS_ASSUME_NONNULL_END
