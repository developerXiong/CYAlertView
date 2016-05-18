//
//  CYSystemAlertView.m
//  CYAlertView
//
//  Created by jeader on 16/5/18.
//  Copyright © 2016年 jeader. All rights reserved.
//

#import "CYDefaultAlertView.h"

@interface CYDefaultAlertView ()

@property (nonatomic, weak) UIView *totalView;


@end

@implementation CYDefaultAlertView

+(instancetype)alertView
{
    static id alertView;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        alertView = [[self alloc] initWithFrame:[UIScreen mainScreen].bounds];
        
    });
    
    return alertView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setUpChildViews];
        
        [self initial];
        
    }
    return self;
}


-(void)initial
{
    self.backgroundColor = [UIColor clearColor];
    
    _totalView.backgroundColor = [UIColor whiteColor];
}

-(void)setUpChildViews
{
    // 整体的View
    UIView *totalView = [[UIView alloc] init];
    [self addSubview:totalView];
    _totalView = totalView;
    totalView.layer.cornerRadius = 8.0;
    
    // title
    
    
}

#pragma mark property all
-(void)setBackgroundColor:(UIColor *)backgroundColor
{
    _backgroundColor = backgroundColor;
    _totalView.backgroundColor = backgroundColor;
}

#pragma mark - show & hidden
-(void)show
{
    [self makeKeyAndVisible];
    [self becomeKeyWindow];
    
    _totalView.hidden = NO;
}
-(void)hidden
{
    [self resignKeyWindow];
}


@end
