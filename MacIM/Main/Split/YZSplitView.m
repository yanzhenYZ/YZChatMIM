//
//  YZSplitView.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZSplitView.h"

@implementation YZSplitView

- (instancetype)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self) {
        self.vertical = YES;
        self.dividerStyle = NSSplitViewDividerStyleThin;
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    
}

@end
