//
//  SumView.h
//  storybroad
//
//  Created by WangZhengHong on 15/11/27.
//  Copyright © 2015年 WangZhengHong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SumProtocol.h"

@interface SumView : UIView
@property (nonatomic,strong) UITextField * txtADD1;
@property (nonatomic,strong) UITextField * txtADD2;
@property (nonatomic,strong) UITextField * txtResult;
@property (nonatomic,strong)id<SumProtocol>delegate;
-(id)initWithFrame:(CGRect)rect Check:(BOOL) icheck ;
@end
