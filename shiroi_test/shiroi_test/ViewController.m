//
//  ViewController.m
//  shiroi_test
//
//  Created by 小铭 on 2020/12/23.
//

#import "ViewController.h"
#import <ZhuoZhuo/ZhuoZhuo.h>
#import "UIImageView+WebCache.h"
#import "MyCollectionViewCell.h"
#import "MyCollectionViewLayout.h"
#import "MJRefresh.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,MyCollectionViewLayoutDelegate>
{
    NSArray *dataAry;

}

@property(nonatomic,strong) UICollectionView *myCollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataAry = GetListData__NotAllowInMainThread();
  
    [self.view addSubview:self.myCollectionView];
    [self.myCollectionView registerClass:[MyCollectionViewCell class] forCellWithReuseIdentifier:@"MyCollectionViewCell"];
    self.myCollectionView.mj_header = [MJRefreshHeader headerWithRefreshingBlock:^{
        [self.myCollectionView reloadData];
    }];
 
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return dataAry.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCollectionViewCell" forIndexPath:indexPath];
    RDMTCellData *cellData = [[RDMTCellData alloc] init];
    cellData  = dataAry[indexPath.item];
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:cellData.Image.ImageUrl]];
    cell.imageView.frame = cell.bounds;
    return cell;
}
-(CGSize)itemSizeForCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath{
    RDMTCellData *cellData = [[RDMTCellData alloc] init];
    cellData  = dataAry[indexPath.item];
//    UIImage *image = dataAry[indexPath.item];
    CGFloat width = self.view.frame.size.width;
    return CGSizeMake((width-10*2-10)/2,cellData.Image.ImageHeight/cellData.Image.ImageWidth*(width-10*2-10)/2 );
}

-(UICollectionView *)myCollectionView{
    if (_myCollectionView==nil) {
        MyCollectionViewLayout *layout = [[MyCollectionViewLayout alloc]init];
        layout.delegate = self;
        self.myCollectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
        self.myCollectionView.backgroundColor = [UIColor systemGroupedBackgroundColor];
        self.myCollectionView.delegate = self;
        self.myCollectionView.dataSource = self;
    }
    return _myCollectionView;
}
@end
