//
//  ViewController.m
//  LinearLayout
//
//  Created by VS on 2017/5/23.
//  Copyright © 2017年 FelixKong. All rights reserved.
//

#import "ViewController.h"

#import "FFLinearLayout.h"

#import "LinearCell.h"

#define VIEW_COLOR [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0]

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDefault];
}

#pragma mark - Method
- (void)setupDefault {
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([LinearCell class]) bundle:nil] forCellWithReuseIdentifier:LinearCellIdentifier];
    
    FFLinearLayout *layout = [[FFLinearLayout alloc] init];
    layout.itemSize = CGSizeMake(200, 400);
    layout.minimumLineSpacing = 30;
    layout.sectionInset = UIEdgeInsetsMake(20, 35, 0, 35);
    self.collectionView.collectionViewLayout = layout;
}

#pragma mark - UICollectionViewDelegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LinearCell *cell = [LinearCell cellWithCollectionView:collectionView withIndexPath:indexPath];
    cell.backgroundColor = VIEW_COLOR;
    return cell;
}


@end
