//
//  YZChatTableCellView.m
//  MacIM
//
//  Created by yanzhen on 2020/9/29.
//

#import "YZChatTableCellView.h"

@interface YZChatTableCellView ()
@property (weak) IBOutlet NSImageView *headImgView;
@property (weak) IBOutlet NSTextField *titleLabel;
@end

@implementation YZChatTableCellView

- (void)awakeFromNib {
    [super awakeFromNib];
    _headImgView.layer.cornerRadius = 50;
    _headImgView.layer.masksToBounds = YES;
    //NSTrackingMouseEnteredAndExited
    NSTrackingArea *trackingArea = [[NSTrackingArea alloc] initWithRect:NSZeroRect options:NSTrackingInVisibleRect | NSTrackingActiveAlways | NSTrackingMouseEnteredAndExited owner:self userInfo:nil];
    [self addTrackingArea:trackingArea];
}

- (void)configUI:(int)row {
    _titleLabel.stringValue = [NSString stringWithFormat:@"%d", row];
}

- (void)mouseEntered:(NSEvent *)event {
    NSTableRowView *superView = (NSTableRowView *)self.superview;
    if (superView.isSelected) { return; }
    superView.backgroundColor = [NSColor colorWithRed:22/255.0 green:22/255.0 blue:22/255.0 alpha:0.1];
}

- (void)mouseExited:(NSEvent *)event {
    NSTableRowView *superView = (NSTableRowView *)self.superview;
    if (superView.isSelected) { return; }
    superView.backgroundColor = NSColor.clearColor;
}


@end
