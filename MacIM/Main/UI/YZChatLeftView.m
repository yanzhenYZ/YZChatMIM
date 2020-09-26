//
//  YZChatLeftView.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatLeftView.h"

@implementation YZChatLeftView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.wantsLayer = YES;
    self.layer.backgroundColor = NSColor.blueColor.CGColor;
}


@end
