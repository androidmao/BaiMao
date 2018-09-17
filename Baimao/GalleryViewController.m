//
//  GalleryViewController.m
//  Baimao
//
//  Created by GOKIT on 2018/9/17.
//  Copyright © 2018年 GOKIT. All rights reserved.
//

#import "GalleryViewController.h"
#import "GralleryCollectionViewCell.h"

@interface GalleryViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation GalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.colectionView registerNib:[UINib nibWithNibName:@"GralleryCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"GralleryCollectionViewCell"];

}


#pragma mark - 代理方法 Delegate Methods
// 设置分区
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

// 每个分区上得元素个数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

// 设置cell
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    GralleryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GralleryCollectionViewCell" forIndexPath:indexPath];

    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
