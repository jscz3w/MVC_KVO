//
//  ViewController.m
//  MVC_KVO
//
//  Created by WangZhengHong on 15/11/28.
//  Copyright © 2015年 WangZhengHong. All rights reserved.
//

#import "ViewController.h"
#import "SumView.h"
#import "Values.h"

@interface ViewController ()
@property (nonatomic,strong) SumView * sumV;
@property (nonatomic,strong) Values * values;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _sumV =[[SumView alloc]initWithFrame:self.view.frame Check:YES];
    [self.view addSubview:_sumV];
    _sumV.delegate=self;
    
    _values =[[Values alloc]init];
    
    
    //添加了订阅中心的"value"服务
    [_values addObserver:self
                 forKeyPath:@"value"
                    options:NSKeyValueObservingOptionNew
                    context:nil];

    
}

#pragma mark - KVO方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    
    //更新View
    _sumV.txtResult.text=[NSString stringWithFormat:@"%@",[change objectForKey:@"new"]];
}



#pragma mark - 实现代理方法
-(void) AddButtonDidTap: (UIButton *) sender{
    //更新Model
    _values.value=[_sumV.txtADD1.text intValue]+[_sumV.txtADD2.text intValue];
    
}

#pragma mark - 释放资源
- (void)dealloc {
   
    
    // 移除KVO
    [_values removeObserver:self forKeyPath:@"value"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
