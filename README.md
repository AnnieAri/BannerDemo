# BannerDemo
无限轮播器,解决滑动过快到第一页或最后一页时会卡顿的问题
解决的办法其实很简单 就是使利用collectionView的cell复用,cell的数量一开始就是图片数量的N倍  cell会复用,不用考虑内存过高的问题!!
# 使用方法
```
//导入头文件
#import "ARBannerView.h"


	//确定在界面上的大小
    ARBannerView* cycleView = [[ARBannerView alloc] initWithFrame:CGRectMake(0, 20, kSCREEN_WIDTH, (1/1.6) *kSCREEN_WIDTH)];
    [self.view addSubview:cycleView];
    //传入包含图片URL的数组
    cycleView.imageURLs = [self loadImageURLs];
```
#效果图
<img src="https://github.com/AnnieAri/BannerDemo/blob/master/BannerDemo/Document/2016-10-13%2012.25.37.gif?raw=true" >





*by -- Ari* 

