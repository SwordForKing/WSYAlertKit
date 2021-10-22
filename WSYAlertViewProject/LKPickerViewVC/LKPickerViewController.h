//
//  LKPickerViewController.h
//  cltios
//
//  Created by zjlk32 on 2021/8/4.
//

#import <UIKit/UIKit.h>
#import "LKPickerProtocol.h"
#import "LKHeader.h"

NS_ASSUME_NONNULL_BEGIN
@class LKPickerProtocol;
@class LKAlertAction;
@interface LKPickerViewController : UIViewController

@property(nonatomic,weak)id<LKWSYPickerDelegate>delegate;

@property(nonatomic,weak)id<LKWSYPickerDataSource>dataSource;

-(instancetype)initWithTitle:(NSString *)title Message:(NSString *)message PickerStyle:(LKWSYPickerStyleType)pickerType;


-(void)dissmissTheCotnentView;

-(void)addAction:(LKAlertAction *)action;

@end

NS_ASSUME_NONNULL_END
