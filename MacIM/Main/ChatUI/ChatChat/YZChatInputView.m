//
//  YZChatInputView.m
//  MacIM
//
//  Created by yanzhen on 2020/9/29.
//

#import "YZChatInputView.h"

@interface YZChatInputView ()
@property (strong) IBOutlet NSView *bgView;

@end

@implementation YZChatInputView

- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    NSNib *nib = [[NSNib alloc] initWithNibNamed:@"YZChatInputView" bundle:nil];
    NSArray *views;
    [nib instantiateWithOwner:self topLevelObjects:&views];
    _bgView = views.firstObject;
    _bgView.frame = self.bounds;
    [self addSubview:_bgView];
    
}
@end
