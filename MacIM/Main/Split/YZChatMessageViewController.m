//
//  YZChatMessageViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatMessageViewController.h"
#import "YZChatTableViewController.h"
#import "YZChatChatViewController.h"

@interface YZChatMessageViewController ()
@property (nonatomic, strong) YZChatTableViewController *tableVC;
@property (nonatomic, strong) YZChatChatViewController *chatVC;
@end

@implementation YZChatMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    _tableVC = [[YZChatTableViewController alloc] init];
    _tableVC.view.frame = NSMakeRect(0, 0, self.splitView.frame.size.width / 2, self.splitView.frame.size.height);
    [self addChildViewController:_tableVC];
    
    _chatVC = [[YZChatChatViewController alloc] init];
    _chatVC.view.frame = NSMakeRect(_tableVC.view.frame.size.width, 0, _tableVC.view.frame.size.width, self.splitView.frame.size.height);
    [self addChildViewController:_chatVC];
    [self.splitView addArrangedSubview:_tableVC.view];
    [self.splitView addArrangedSubview:_chatVC.view];
}

@end
