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
    [self setupUI];
}

- (void)setupUI {
    _tableVC = [[YZChatTableViewController alloc] init];
    //根据比例自动调整
    CGFloat tableViewW = self.splitView.frame.size.width * 300 / 860;
    _tableVC.view.frame = NSMakeRect(0, 0, tableViewW, self.splitView.frame.size.height);
    [self addChildViewController:_tableVC];
    NSLog(@"122:%f", self.splitView.frame.size.width);
    _chatVC = [[YZChatChatViewController alloc] init];
    _chatVC.view.frame = NSMakeRect(tableViewW, 0, self.splitView.frame.size.width - tableViewW, self.splitView.frame.size.height);
    [self addChildViewController:_chatVC];
    [self.splitView addArrangedSubview:_tableVC.view];
    [self.splitView addArrangedSubview:_chatVC.view];
}
@end
