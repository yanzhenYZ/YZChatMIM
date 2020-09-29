//
//  YZChatTableViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatTableViewController.h"
#import "YZChatTableCellView.h"

@interface YZChatTableViewController ()<NSTableViewDelegate, NSTableViewDataSource>
@property (weak) IBOutlet NSTableHeaderView *headerView;
@property (weak) IBOutlet NSTableView *tableView;
@property (weak) NSTableRowView *selectView;
@end

@implementation YZChatTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = NSColor.purpleColor.CGColor;
    _tableView.headerView = nil;
}

#pragma mark - tableview
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 15;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    YZChatTableCellView *cell = [tableView makeViewWithIdentifier:@"YZChatTableCellView" owner:self];
    [cell configUI:(int)row];
    return cell;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row {
    return  80;
}

/**
 设置选中无背景
 NSTableRowView.selectionHighlightStyle = NSTableViewSelectionHighlightStyleNone;
 下面通过选中设置特定背景色
 //cell设置鼠标悬停背景色
 */
- (void)tableViewSelectionDidChange:(NSNotification *)notification {
    self.selectView.backgroundColor = [NSColor clearColor];
    NSTableRowView *rowView = [self.tableView rowViewAtRow:self.tableView.selectedRow makeIfNecessary:YES];
    rowView.backgroundColor = NSColor.redColor;
    self.selectView = rowView;
}
@end
