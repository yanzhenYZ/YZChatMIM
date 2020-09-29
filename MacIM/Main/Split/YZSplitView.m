//
//  YZSplitView.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZSplitView.h"

@interface YZSplitView ()<NSSplitViewDelegate>

@end

@implementation YZSplitView

- (instancetype)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self) {
        _minCoordinate = 240;
        _maxCoordinate = 300;
        self.vertical = YES;
        self.dividerStyle = NSSplitViewDividerStyleThin;
        self.delegate = self;
    }
    return self;
}

#pragma mark - NSSplitViewDelegate
- (CGFloat)splitView:(NSSplitView *)splitView constrainMinCoordinate:(CGFloat)proposedMinimumPosition ofSubviewAt:(NSInteger)dividerIndex {
    return _minCoordinate;
}

- (CGFloat)splitView:(NSSplitView *)splitView constrainMaxCoordinate:(CGFloat)proposedMaximumPosition ofSubviewAt:(NSInteger)dividerIndex {
    return _maxCoordinate;
}
@end
