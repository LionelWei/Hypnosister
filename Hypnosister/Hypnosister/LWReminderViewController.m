//
//  LWReminderViewController.m
//  Hypnosister
//
//  Created by Lionel Wei on 2/12/17.
//  Copyright © 2017 Lionel Wei. All rights reserved.
//

#import "LWReminderViewController.h"

@interface LWReminderViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *dataPicker;

- (IBAction)addReminder:(id)sender;
@end

@implementation LWReminderViewController


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Reminder";
        self.tabBarItem.image = [UIImage imageNamed:@"icon_fullscreen_close_normal"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)addReminder:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"标题" message:@"这个是UIAlertController的默认样式" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    
    
    [alertController addAction:cancelAction];
    
    
    [alertController addAction:okAction];
    
//    [self presentViewController:alertController animated:YES completion:nil];
    
    NSDate *date = self.dataPicker.date;
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"哈哈";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
    
}
@end
