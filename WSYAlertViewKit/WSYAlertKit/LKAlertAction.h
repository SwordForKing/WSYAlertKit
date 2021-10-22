//
//  LKAlertAction.h
//  WSYPickerProject
//
//  Created by zjlk32 on 2021/10/18.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    LKAlertActionStyleDefault,
    LKAlertActionStyleSure,
    LKAlertActionStyleCancel,
} LKAlertActionStyle;

typedef void(^lkAlertBlock)(void);
typedef void(^lkTitleColorBlock)(UIColor *titleColor);
typedef void(^lkTitleFontBlock)(UIFont *titleFont);
typedef void(^lkLineColorBlock)(UIColor *lineColor);

@interface LKAlertAction : NSObject

@property(nonatomic,copy)NSString   *tittle;

@property(nonatomic,copy)lkAlertBlock  block;

@property(nonatomic,strong)UIColor  *titleColor;

@property(nonatomic,strong)UIFont   *titleFont;

@property(nonatomic,copy)lkTitleColorBlock  titleColorBlock;
@property(nonatomic,copy)lkTitleFontBlock   titleFontBlock;
@property(nonatomic,copy)lkLineColorBlock   lineColorBlock;

+(instancetype)AddAlertWithTitle:(NSString *)tittle AndTheAlertActionStyle:(LKAlertActionStyle)actionStyle AndTheBlock:(void(^)(void))block;

@end

NS_ASSUME_NONNULL_END
