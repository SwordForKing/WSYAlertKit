//
//  LKPickerAlertContentView.m
//  WSYPickerProject
//
//  Created by zjlk32 on 2021/10/18.
//

#import "LKPickerAlertContentView.h"
#import "WSYAlertCollectionCell.h"
#import "NSArray+SafeIndex.h"

@interface LKPickerAlertContentView ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,strong)UIView   *lineV;

@property(nonatomic,strong)UICollectionView  *collectV;

@property(nonatomic,strong)UICollectionViewFlowLayout  *wsyLayout;

@property(nonatomic,strong)NSMutableArray<LKAlertAction*>    *actions;

@end

@implementation LKPickerAlertContentView

-(NSMutableArray *)actions{
    if (!_actions) {
        _actions = [NSMutableArray arrayWithCapacity:0];
    }
    return _actions;
}

-(UICollectionView *)collectV{
    if (!_collectV) {
        _collectV = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:self.wsyLayout];
        _collectV.backgroundColor = [UIColor grayColor];
        _collectV.showsHorizontalScrollIndicator = false;
        _collectV.showsVerticalScrollIndicator = false;
    }
    return _collectV;
}

-(UICollectionViewFlowLayout *)wsyLayout{
    if (!_wsyLayout) {
        _wsyLayout = [[UICollectionViewFlowLayout alloc]init];
        _wsyLayout.minimumLineSpacing = 0;
        _wsyLayout.minimumInteritemSpacing = 0;
       
    }
    return _wsyLayout;
}
-(UIView *)lineV{
    if (!_lineV) {
        _lineV = [[UIView alloc]initWithFrame:CGRectMake(0, self.frame.size.height - 50.5, self.frame.size.width, 0.5)];
        _lineV.backgroundColor = [UIColor grayColor];
    }
    return _lineV;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _numMax = 3;
       [self setTheContentView];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        _numMax = 3;
        self.wsyLayout.itemSize = CGSizeMake(self.frame.size.width, 50);
        [self setTheContentView];
    }
    return self;
}

-(void)setNumMax:(NSInteger)numMax{
    _numMax = numMax;
}

-(void)setTheContentView{
    self.collectV.frame = CGRectMake(0, self.frame.size.height - 50,self.frame.size.width, 50);
    [self addSubview:self.lineV];
    [self addSubview:self.collectV];
    self.collectV.delegate = self;
    self.collectV.dataSource = self;
}

-(void)addActions:(LKAlertAction *)action{
    if (self.actions.count <= _numMax) {
        [self.actions addObject:action];
        self.wsyLayout.itemSize = CGSizeMake(self.frame.size.width/self.actions.count, 50);
        [self.collectV reloadData];
    }
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.actions.count;
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    WSYAlertCollectionCell  *cell = [WSYAlertCollectionCell creatTheCollectView:collectionView AndTheIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor whiteColor];
    cell.cellAction = [self.actions objcetSafeGetIndex:indexPath.item];
    if (indexPath.item == 0) {
        cell.leftLineV.hidden = true;
        cell.rightLineV.hidden = false;
    }else if (indexPath.item > 0 && indexPath.item < self.actions.count - 1){
        cell.leftLineV.hidden = false;
        cell.rightLineV.hidden = false;
    }else{
        cell.leftLineV.hidden = false;
        cell.rightLineV.hidden = true;
    }
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    LKAlertAction  *action = [self.actions objcetSafeGetIndex:indexPath.item];
    if (action.block) {
        action.block();
    }
}

@end
