//
//  ViewController.m
//  WSYAlertViewKit
//
//  Created by zjlk32 on 2021/10/22.
//

#import "ViewController.h"
#import "LKPickerViewController.h"
#import "LKAlertAction.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton  *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(150, 200, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(clickBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


-(void)clickBtnAction{
    LKPickerViewController  *picker = [[LKPickerViewController alloc]initWithTitle:@"alertTitle" Message:@"自定义的弹出消息" PickerStyle:LKWSYPickerStyle_AlertCenter];
    LKAlertAction  *alert_0 = [LKAlertAction AddAlertWithTitle:@"取消" AndTheAlertActionStyle:LKAlertActionStyleCancel AndTheBlock:^{

    }];
    alert_0.titleColor = [UIColor redColor];
    LKAlertAction  *alert_1 = [LKAlertAction AddAlertWithTitle:@"确认" AndTheAlertActionStyle:LKAlertActionStyleDefault AndTheBlock:^{

    }];
    LKAlertAction  *alert_2 = [LKAlertAction AddAlertWithTitle:@"确认" AndTheAlertActionStyle:LKAlertActionStyleDefault AndTheBlock:^{

    }];
    LKAlertAction  *alert_3 = [LKAlertAction AddAlertWithTitle:@"确认" AndTheAlertActionStyle:LKAlertActionStyleDefault AndTheBlock:^{

    }];

    [picker addAction:alert_0];
    [picker addAction:alert_1];
    [picker addAction:alert_2];
    [picker addAction:alert_3];


    [self presentViewController:picker animated:false completion:^{

    }];

}
@end
