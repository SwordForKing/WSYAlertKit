//
//  WSYAlertCollectionCell.h
//  WSYPickerProject
//
//  Created by zjlk32 on 2021/10/18.
//

#import <UIKit/UIKit.h>
#import "WSYBaseCollectionCell.h"
#import "LKAlertAction.h"
NS_ASSUME_NONNULL_BEGIN

@interface WSYAlertCollectionCell : WSYBaseCollectionCell

@property(nonatomic,strong)LKAlertAction  *cellAction;

@property(nonatomic,strong)UIView  *leftLineV;

@property(nonatomic,strong)UIView  *rightLineV;

@end

NS_ASSUME_NONNULL_END
