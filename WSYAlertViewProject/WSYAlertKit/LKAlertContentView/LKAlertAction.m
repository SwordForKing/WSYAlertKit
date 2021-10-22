//
//  LKAlertAction.m
//  WSYPickerProject
//
//  Created by zjlk32 on 2021/10/18.
//

#import "LKAlertAction.h"
#import <objc/runtime.h>

@interface LKAlertAction()

@property(nonatomic,assign)LKAlertActionStyle  actionStyle;

@end


@implementation LKAlertAction

-(instancetype)init{
    if (self == [super init]) {
        _titleColor =  [UIColor colorWithRed:50.0f/255.0f green:149.0f/255.0f blue:250.0f/255.0f alpha:1.0];
        _titleFont = [UIFont systemFontOfSize:14];
        
    }
    return self;
}

+(instancetype)AddAlertWithTitle:(NSString *)tittle AndTheAlertActionStyle:(LKAlertActionStyle)actionStyle AndTheBlock:(void(^)(void))block{
    LKAlertAction  *Alert = [[LKAlertAction alloc]init];
    Alert.tittle = tittle;
    Alert.block = ^{
        block();
    };
    return Alert;
}

//-(void)setTitleColor:(UIColor *)titleColor{
//    _titleColor = titleColor;
//}
//
//-(void)setTitleFont:(UIFont *)titleFont{
//    _titleFont = titleFont;
//}

@end
