//
//  YZOtherMessageCell.m
//  MacIM
//
//  Created by yanzhen on 2020/10/10.
//

#import "YZOtherMessageCell.h"

@interface YZOtherMessageCell ()
@property (weak) IBOutlet NSImageView *avatarImgView;
@property (weak) IBOutlet NSTextField *nameLabel;
@property (weak) IBOutlet NSTextView *contentTextView;
@property (weak) IBOutlet NSLayoutConstraint *contentHConstraint;
@property (weak) IBOutlet NSLayoutConstraint *contentWConstraint;

@end

@implementation YZOtherMessageCell

-(void)awakeFromNib {
    [super awakeFromNib];
    _avatarImgView.image = [NSImage imageNamed:@"header"];
    self.contentTextView.textContainerInset = NSMakeSize(5.0, 8.0);
    self.contentTextView.drawsBackground = NO;
    self.contentTextView.editable = NO;
    
    _contentTextView.string = @"123456";
}

@end
