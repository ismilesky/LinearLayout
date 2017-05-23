//
//  LinearCell.m
//  LinearLayout
//
//  Created by VS on 2017/5/23.
//  Copyright © 2017年 FelixKong. All rights reserved.
//

#import "LinearCell.h"

NSString * const LinearCellIdentifier = @"LinearCellIdentifier";

@implementation LinearCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.cornerRadius = 5;
    self.layer.borderWidth = 1;
    self.clipsToBounds = YES;
    self.layer.borderColor = [UIColor clearColor].CGColor;
}

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView withIndexPath:(NSIndexPath *)indexPath {
    LinearCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:LinearCellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
    }
    return cell;
}

@end
