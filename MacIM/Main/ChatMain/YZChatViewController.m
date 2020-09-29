//
//  YZChatViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatViewController.h"
#import "YZChatMessageViewController.h"

@interface YZChatViewController ()
@property (nonatomic, strong) YZChatMessageViewController *messageVC;

@end

@implementation YZChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
//    [self addChildViewController:self.messageVC];
//    [self.view addSubview:self.messageVC.view];
//    self.messageVC.view.frame = NSMakeRect(100, 0, 100, 100);
//    NSView *view = [[NSView alloc] initWithFrame:NSMakeRect(100, 0, 100, 100)];
//    view.wantsLayer = YES;
//    view.layer.backgroundColor = NSColor.blueColor.CGColor;
//    [self.view addSubview:view];
}


-(YZChatMessageViewController *)messageVC {
    if (!_messageVC) {
        _messageVC = [[YZChatMessageViewController alloc] init];
    }
    return _messageVC;
}

@end
