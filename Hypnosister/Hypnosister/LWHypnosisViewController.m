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

#pragma mark - DidLoad
- (void)viewDidLoad {
    [super viewDidLoad];

    LWHypnosisView *h = [[LWHypnosisView alloc]initWithFrame:CGRectMake(50, 50, 300, 400)];
    h.backgroundColor = [UIColor redColor];
    [self.view addSubview:h];
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
