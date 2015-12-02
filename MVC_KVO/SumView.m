//
//  SumView.m
//  storybroad
//
//  Created by WangZhengHong on 15/11/27.
//  Copyright © 2015年 WangZhengHong. All rights reserved.
//

#import "SumView.h"

@implementation SumView
-(id)initWithFrame:(CGRect)rect Check:(BOOL) icheck {
    self= [self initWithFrame:rect];
    if (self) {
        self.frame =rect;
        
        
        self.backgroundColor =[UIColor blackColor];
        _txtADD1 =[[UITextField alloc]initWithFrame:CGRectMake((self.frame.size.width-300)/2, 100, 300, 40)];
        _txtADD1.backgroundColor=[UIColor whiteColor];
        [self addSubview:_txtADD1];
        
        _txtADD2=[[UITextField alloc]initWithFrame:CGRectMake((self.frame.size.width-300)/2, 160, 300, 40)];
        _txtADD2.backgroundColor=[UIColor whiteColor];
        [self addSubview:_txtADD2];
        
        _txtResult=[[UITextField alloc]initWithFrame:CGRectMake((self.frame.size.width-300)/2, 220, 300, 40)];
        _txtResult.backgroundColor=[UIColor whiteColor];
        [self addSubview:_txtResult];

        
        UIButton * _btnADD =[[UIButton alloc]initWithFrame:CGRectMake((self.frame.size.width-300)/2, 280, 300, 40)];
        [_btnADD setTitle:@"SUM" forState:UIControlStateNormal];
        _btnADD.backgroundColor =[UIColor whiteColor];
        
        [_btnADD setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self addSubview:_btnADD];
        [_btnADD addTarget:self action:@selector(myButtonShouldTap:) forControlEvents:UIControlEventTouchUpInside];
        
        
        
    }
    return  self;
}

-(void)myButtonShouldTap:(UIButton *) sender
{
    if(_delegate){
        if ([_delegate respondsToSelector:@selector(AddButtonDidTap:)]) {
            [_delegate AddButtonDidTap:nil];
        }
        
    }
    
}
@end
