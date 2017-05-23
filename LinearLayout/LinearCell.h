//
//  LinearCell.h
//  LinearLayout
//
//  Created by VS on 2017/5/23.
//  Copyright © 2017年 FelixKong. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const LinearCellIdentifier;

@interface LinearCell : UICollectionViewCell

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView withIndexPath:(NSIndexPath *)indexPath;
@end
