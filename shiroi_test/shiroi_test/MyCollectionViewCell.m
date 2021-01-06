//
//  MyCollectionViewCell.m
//  shiroi_test
//
//  Created by 小铭 on 2020/12/23.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc]init];
        _imageView.backgroundColor = [UIColor lightTextColor];
        [self.contentView addSubview:_imageView];
    }
    
    return self;
}
@end
