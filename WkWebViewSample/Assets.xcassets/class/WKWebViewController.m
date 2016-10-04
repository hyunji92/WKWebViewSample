//
//  WKWebViewController.m
//  WkWebViewSample
//
//  Created by Infobank_mac on 10/4/16.
//  Copyright © 2016 Infobank_mac. All rights reserved.
//

#import "WKWebViewController.h"

@interface WKWebViewController () <UINavigationBarDelegate>

@property (strong, nonatomic) IBOutlet UIView *containerView;
@property (strong, nonatomic) IBOutlet UIWebView *WKWbView;

@end

@implementation WKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setView];
}

- (void)setView {
    UIView *view;
    _containerView = view;
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [self setWebView];
}
- (void)setWebView {
    _WKWbView.delegate = self;
    NSURL *url = [NSURL URLWithString:@"http://www.naver.com"];
    NSMutableURLRequest *multableRequest = [NSMutableURLRequest requestWithURL:url];
    [_WKWbView loadRequest:multableRequest];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    _containerView.frame = self.view.bounds;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backPress:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
