//
//  YZChatSplitViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatSplitViewController.h"

@interface YZChatSplitViewController ()

@end

@implementation YZChatSplitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    _splitView = [[YZSplitView alloc] initWithFrame:self.view.bounds];
    _splitView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
    [self.view addSubview:self.splitView];
    
    
}

@end
