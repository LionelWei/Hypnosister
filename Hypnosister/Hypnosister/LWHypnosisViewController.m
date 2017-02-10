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

- (void)loadView {
    CGRect bounds = CGRectMake(50, 50, 300, 400);
    LWHypnosisView *hypView = [[LWHypnosisView alloc] initWithFrame:bounds];
    hypView.backgroundColor = [UIColor redColor];
    self.view = hypView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
