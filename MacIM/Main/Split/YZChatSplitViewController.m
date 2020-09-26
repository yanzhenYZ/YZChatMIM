//
//  YZChatSplitViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatSplitViewController.h"
#import "YZChatSplitView.h"

@interface YZChatSplitViewController ()
@property (nonatomic, strong) YZChatSplitView *splitView;
@end

@implementation YZChatSplitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
//    self.splitView = [[YZChatSplitView alloc] initWithFrame:self.view.bounds];
//    self.splitView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
//    self.splitView.wantsLayer = YES;
//    self.splitView.layer.backgroundColor = NSColor.brownColor.CGColor;
//    self.splitView.controller = self;
//    [self.view addSubview:self.splitView];
//    
//    for (NSViewController* cntlr in self.childViewControllers)
//        [self.splitView addSubview:cntlr.view];
}

@end
