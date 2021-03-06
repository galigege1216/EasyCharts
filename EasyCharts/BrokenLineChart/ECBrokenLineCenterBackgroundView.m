//  ************************************************************************
//
//  DrawLineBackgroundView.m
//  DrawByCollectionView
//
//  Created by 宋永建 on 2017/6/6.
//  Copyright © 2017年 Global. All rights reserved.
//
//  Main function:
//
//  Other specifications:
//
//  ************************************************************************

#import "ECBrokenLineCenterBackgroundView.h"
#import "ECCommon.h"

@interface ECBrokenLineCenterBackgroundView ()

@end

@implementation ECBrokenLineCenterBackgroundView

+ (instancetype)backgroundViewWithFrame:(CGRect)frame {
    ECBrokenLineCenterBackgroundView *view = [[self alloc] init];
    view.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    [view setupBackGroupImageView];
    return view;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self configOwnProperties];
    }
    return self;
}

- (void)setupBackGroupImageView {
    NSString *imgPath= [MYBUNDLE_PATH stringByAppendingPathComponent:@"lineBackground"];
    UIImage *backGroupImage = [UIImage imageWithContentsOfFile:imgPath];
    UIImageView *backGroupImageView = [[UIImageView alloc] init];
    backGroupImageView.image = backGroupImage;
    
    backGroupImageView.frame = CGRectMake(0, 15, self.frame.size.width, self.frame.size.height - 40);
    [self addSubview:backGroupImageView];
}

- (void)configOwnProperties {
    [self setBackgroundColor:[UIColor colorWithRed:(255)/255.0 green:(156)/255.0 blue:(14)/255.0 alpha:1.0]];
}

@end
