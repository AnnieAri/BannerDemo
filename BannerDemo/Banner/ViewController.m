//
//  ViewController.m
//  Banner
//
//  Created by Ari on 16/10/13.
//  Copyright © 2016年 com.Ari. All rights reserved.
//

#import "ViewController.h"
#import "ARBannerView.h"
@interface ViewController ()

@end
#define kSCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ARBannerView* cycleView = [[ARBannerView alloc] initWithFrame:CGRectMake(0, 20, kSCREEN_WIDTH, (1/1.6) *kSCREEN_WIDTH)];
    cycleView.backgroundColor = [UIColor redColor];
    [self.view addSubview:cycleView];
    
    cycleView.imageURLs = [self loadImageURLs];
    
}
- (NSArray*)loadImageURLs
{
    NSMutableArray* array = [NSMutableArray array];
    
    for (int i = 0; i < 5; i++) {
        NSString* imageName = [NSString stringWithFormat:@"bannerPic%02d.jpg", i + 1];
        
        // 获取图片的url
        NSURL* url = [[NSBundle mainBundle] URLForResource:imageName withExtension:nil];
        
        [array addObject:url];
    }
    
    return array.copy;
}

@end
