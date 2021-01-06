//
//  瀑布流

#import <UIKit/UIKit.h>

@protocol MyCollectionViewLayoutDelegate <NSObject>

-(CGSize )itemSizeForCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath;

@end
@interface MyCollectionViewLayout : UICollectionViewLayout
@property(nonatomic,copy)NSMutableDictionary *maxYDic;
@property(nonatomic,assign)CGFloat clomnInst;//列间距
@property(nonatomic,weak)id<MyCollectionViewLayoutDelegate>delegate;
@end
