

#import "BlackTipView.h"

@implementation BlackTipView

+ (void)showBlackTipViewTipName:(NSString *)tipName
{
    UIView *successTipView = [[UIView alloc] initWithFrame:CGRectMake((ScreenWidth-140)*0.5, ScreenHeight - 130, 140, 35)];
    successTipView.backgroundColor = [UIColor blackColor];
    successTipView.alpha = 1.0;
    UIWindow * keyWindow = [UIApplication sharedApplication].keyWindow;
    [keyWindow addSubview:successTipView];
    UILabel *successfulLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 2, 120, 30)];
    successfulLabel.text = tipName;           //@"此商品购物车已添加"
    successfulLabel.textAlignment = NSTextAlignmentCenter;
    successfulLabel.textColor = [UIColor whiteColor];
    successfulLabel.backgroundColor = [UIColor clearColor];
    successfulLabel.numberOfLines = 0;
    successfulLabel.font = [UIFont boldSystemFontOfSize:12.0];
    [successTipView addSubview:successfulLabel];
    [UIView animateWithDuration:1.5 animations:^{
        successTipView.alpha = 0.8;
    } completion:^(BOOL finished) {
        [successfulLabel removeFromSuperview];
        [successTipView removeFromSuperview];
    }];
    
}

@end
