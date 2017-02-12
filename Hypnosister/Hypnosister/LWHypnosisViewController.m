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

@property (nonatomic, strong) LWHypnosisView* h;
@end

@implementation LWHypnosisViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        self.tabBarItem.image = [UIImage imageNamed:@"icon_home_normal"];
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
    
    self.h = [[LWHypnosisView alloc]initWithFrame:screenRect];
    self.h.backgroundColor = [UIColor redColor];
    
    [scrollView addSubview:self.h];

    screenRect.origin.x += screenRect.size.width;
    LWHypnosisView *another = [[LWHypnosisView alloc] initWithFrame:screenRect];
    
    [scrollView addSubview:another];
    [scrollView setPagingEnabled:YES];
    
    
    NSArray *segmentedArray = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",nil];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray];
    segmentedControl.frame = CGRectMake(20.0, 350, 200, 40);
    
    [segmentedControl addTarget:self action:@selector(clickSeg:) forControlEvents:UIControlEventValueChanged];
    
    [scrollView addSubview:segmentedControl];
    
    
    scrollView.contentSize = bigRect.size;//CGSizeMake(bigRect.size.width * 1.5, bigRect.size.height * 1.5);
    
}

- (void) clickSeg:(UISegmentedControl *)seg {
    NSInteger index = seg.selectedSegmentIndex;
    NSLog(@"%lu is selected", index);
    switch (index) {
        case 0:
            [self.h updateColor:[UIColor whiteColor]];
            break;
        case 1:
            [self.h updateColor:[UIColor yellowColor]];
            break;
        case 2:
            [self.h updateColor:[UIColor blueColor]];
            break;
        case 3:
            [self.h updateColor:[UIColor blackColor]];
            break;
        default:
            break;
    }
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
