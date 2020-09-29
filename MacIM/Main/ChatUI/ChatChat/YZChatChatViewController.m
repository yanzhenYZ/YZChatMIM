//
//  YZChatChatViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatChatViewController.h"
#import "YZChatInputView.h"

@interface YZChatChatViewController ()
@property (weak) IBOutlet YZChatInputView *inputView;

@end

@implementation YZChatChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    _inputView.wantsLayer = YES;
    _inputView.layer.backgroundColor = NSColor.purpleColor.CGColor;
}

@end
