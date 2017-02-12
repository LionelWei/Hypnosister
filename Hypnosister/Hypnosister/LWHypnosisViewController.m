//
//  LWHypnosisViewController.m
//  Hypnosister
//
//  Created by Lionel Wei on 2/10/17.
//  Copyright © 2017 Lionel Wei. All rights reserved.
//

#import "LWHypnosisViewController.h"
#import "LWHypnosisView.h"

@interface LWHypnosisViewController ()

@end

@implementation LWHypnosisViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect screenRect = CGRectMake(0, 0, 300, 400);
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [self.view addSubview:scrollView];
    
    LWHypnosisView *h = [[LWHypnosisView alloc]initWithFrame:screenRect];
    h.backgroundColor = [UIColor redColor];
    
    [scrollView addSubview:h];

    screenRect.origin.x += screenRect.size.width;
    LWHypnosisView *another = [[LWHypnosisView alloc] initWithFrame:screenRect];
    
    [scrollView addSubview:another];
    [scrollView setPagingEnabled:YES];
    
    scrollView.contentSize = bigRect.size;//CGSizeMake(bigRect.size.width * 1.5, bigRect.size.height * 1.5);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
