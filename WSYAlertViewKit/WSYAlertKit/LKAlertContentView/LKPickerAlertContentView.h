//
//  LKPickerAlertContentView.h
//  WSYPickerProject
//
//  Created by zjlk32 on 2021/10/18.
//

#import <UIKit/UIKit.h>
#import "LKAlertAction.h"
NS_ASSUME_NONNULL_BEGIN

@interface LKPickerAlertContentView : UIView

@property(nonatomic,copy)NSString    *titleStr;

@property(nonatomic,copy)NSString    *contentStr;

@property(nonatomic,strong)UIColor  *titleColor;

@property(nonatomic,strong)UIFont   *titleFont;

@property(nonatomic,strong)UIColor  *lineColor;

@property(nonatomic,assign)NSInteger  numMax;

-(void)addActions:(LKAlertAction *)action;
@end

NS_ASSUME_NONNULL_END
