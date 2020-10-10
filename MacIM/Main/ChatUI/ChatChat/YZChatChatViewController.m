//
//  YZChatChatViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatChatViewController.h"
#import "YZChatInputView.h"
#import "YZOtherMessageCell.h"
#import "YZUsersChatInfo.h"

@interface YZChatChatViewController ()<NSTableViewDelegate, NSTableViewDataSource>
@property (strong)  YZChatInputView *inputView;
@property (weak) IBOutlet NSView *inputBgView;
@property (weak) IBOutlet NSTextField *nameLabel;
@property (weak) IBOutlet NSTableView *tableView;

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
    
    self.tableView.headerView = nil;
    [self.tableView registerNib:[[NSNib alloc] initWithNibNamed:NSStringFromClass([YZOtherMessageCell class]) bundle:nil]  forIdentifier:@"YZOtherMessageCell"];
    
    _inputView.wantsLayer = YES;
    _inputView.layer.backgroundColor = NSColor.purpleColor.CGColor;
    
    NSString *usersPath = [NSBundle.mainBundle pathForResource:@"users" ofType:@"plist"];
    NSDictionary *usersDict = [NSDictionary dictionaryWithContentsOfFile:usersPath];
    NSArray *usersArray = usersDict[@"users"];
    NSLog(@"_____%@", usersArray);
}

- (void)updateName:(NSString *)name {
    _nameLabel.stringValue = name;
}

#pragma mark - tableView
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 10;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    YZOtherMessageCell *cell = [tableView makeViewWithIdentifier:@"YZOtherMessageCell" owner:self];
    return cell;
}

-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row {
    return 100;
}
@end
