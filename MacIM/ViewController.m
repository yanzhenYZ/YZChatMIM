//
//  ViewController.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (IBAction)pushAction:(id)sender {
    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"YZChat" bundle:nil];
    NSWindowController *vc = storyboard.instantiateInitialController;
    [vc.window center];
    [vc.window makeKeyAndOrderFront:nil];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
