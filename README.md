## LinearLayout
UICollectionView的线性布局

## Usage

导入 `FFLinearLayout.h` 

```
// 设置UICollectionView的collectionViewLayout
    FFLinearLayout *layout = [[FFLinearLayout alloc] init];
    layout.itemSize = CGSizeMake(200, 400);
    layout.minimumLineSpacing = 30;
    layout.sectionInset = UIEdgeInsetsMake(20, 35, 0, 35);
    self.collectionView.collectionViewLayout = layout;
```

