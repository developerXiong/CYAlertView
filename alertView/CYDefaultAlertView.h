//
//  CYSystemAlertView.h
//  CYAlertView
//
//  Created by jeader on 16/5/18.
//  Copyright © 2016年 jeader. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYDefaultAlertView : UIWindow

/**
 *  整体视图的背景颜色
 */
@property (nonatomic, strong) UIColor *backgroundColor;

/**
 *  初始化方法
 */
+(instancetype)alertView;

-(void)show;
-(void)hidden;

@end
