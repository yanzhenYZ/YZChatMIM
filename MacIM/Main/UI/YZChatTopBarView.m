//
//  YZChatTopBarView.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatTopBarView.h"

@implementation YZChatTopBarView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.wantsLayer = YES;
        self.layer.backgroundColor = NSColor.redColor.CGColor;
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    self.wantsLayer = YES;
    self.layer.backgroundColor = NSColor.redColor.CGColor;
}



- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
