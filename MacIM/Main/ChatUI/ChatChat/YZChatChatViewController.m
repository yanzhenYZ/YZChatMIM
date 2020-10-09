//
//  YZChatChatViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatChatViewController.h"
#import "YZChatInputView.h"

@interface YZChatChatViewController ()
@property (strong)  YZChatInputView *inputView;
@property (weak) IBOutlet NSView *inputBgView;
@property (weak) IBOutlet NSTextField *nameLabel;

@end

@implementation YZChatChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    _nameLabel.stringValue = @"0";
    //直接xib加载容易出现加载不出来的情况
    _inputView = [[YZChatInputView alloc] initWithFrame:_inputBgView.bounds];
    _inputView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
    [_inputBgView addSubview:_inputView];
    
    _inputView.wantsLayer = YES;
    _inputView.layer.backgroundColor = NSColor.purpleColor.CGColor;
}

- (void)updateName:(NSString *)name {
    _nameLabel.stringValue = name;
}
@end
