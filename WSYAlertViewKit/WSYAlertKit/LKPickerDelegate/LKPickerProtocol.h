//
//  LKPickerProtocol.h
//  cltios
//
//  Created by zjlk32 on 2021/8/7.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    LKWSYPickerType_picker,
    LKWSYPickerType_tableV,
    LKWSYPickerType_custom,
}LKWSYPickerType;

typedef enum : NSUInteger{
    LKWSYPickerStyle_AlertCenter,
    LKWSYPickerStyle_AlertSheet
}LKWSYPickerStyleType;

NS_ASSUME_NONNULL_BEGIN
//业务逻辑
@protocol LKWSYPickerDelegate <NSObject>

@optional

//内部展示的类型
-(LKWSYPickerType)lkwsyPickerType;
//弹出位置类型
-(LKWSYPickerStyleType)lkwsyPickerStyleType;
//即将弹出
-(void)lkwsyWillAppear;
//弹出之后
-(void)lkwsyDidAppear;
//消失之前调用
-(void)lkwsyWillDisApperar;
//消失之后调用
-(void)lkwsyDidDisAppear;
@end
//数据源逻辑
@protocol LKWSYPickerDataSource <NSObject>
@optional
//弹出高度
-(NSInteger)lkwsyPickerHeight;
//自定义视图
-(UIView *)lkwsyPickerViewCustomBackContentView;
//title颜色
@end

@interface LKPickerProtocol : NSObject

@property(nonatomic,weak)id<LKWSYPickerDelegate>delegate;

@property(nonatomic,weak)id<LKWSYPickerDataSource>dataSource;

@end

NS_ASSUME_NONNULL_END
