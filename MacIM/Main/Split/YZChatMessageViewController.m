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
    _tableVC.view.frame = NSMakeRect(0, 0, 280, 120);
    [self addChildViewController:_tableVC];
    
    _chatVC = [[YZChatChatViewController alloc] init];
    _chatVC.view.frame = NSMakeRect(280, 0, 280, 200);
    [self addChildViewController:_chatVC];
    
    [self.splitView addSubview:_tableVC.view];
    [self.splitView addSubview:_chatVC.view];
}

@end
