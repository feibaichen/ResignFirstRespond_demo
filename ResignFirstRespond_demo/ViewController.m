//
//  ViewController.m
//  ResignFirstRespond_demo
//
//  Created by Derek on 14/11/17.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

     UITextField *tf1;
     UITextField *tf2;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //1、[view endEditing:YES]  这个方法可以让整个view取消第一响应者，从而让所有控件的键盘隐藏。
    //2、[textFiled resignFirstResponder] 这个则是比较常用的让某个textFiled的键盘隐藏
    
    
    //第一个使用UITapGestureRecognizer
    tf1=[[UITextField alloc]initWithFrame:CGRectMake(0, 0, 150, 40)];
    tf1.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/4) ;
    tf1.placeholder=@"第一个";
    tf1.layer.borderWidth=1;
    [self.view addSubview:tf1];
    //第二个：view的touchesBegan:触摸事件来实现对键盘的隐藏，当点击view的区域就会触发这个事件
    tf2=[[UITextField alloc]initWithFrame:CGRectMake(0, 0, 150, 40)];
    tf2.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2) ;
    tf2.layer.borderWidth=1;
    tf2.placeholder=@"第二个";
    [self.view addSubview:tf2];
    
    
    //UITapGestureRecognizer * tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapTohide)];
    
    
    //[self.view addGestureRecognizer:tap];
    
}
-(void)tapTohide{
    
    //[tf1 resignFirstResponder];   //亦可
    [tf1 endEditing:YES];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    //[tf2 resignFirstResponder];亦可
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
