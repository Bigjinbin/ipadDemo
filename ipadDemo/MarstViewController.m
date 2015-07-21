//
//  MarstViewController.m
//  ipadDemo
//
//  Created by jb on 15/7/21.
//  Copyright (c) 2015年 jb. All rights reserved.
//

#import "MarstViewController.h"

@interface MarstViewController ()

@end

@implementation MarstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UISegmentedControl *s =[[UISegmentedControl alloc]initWithItems:@[@"红色",@"蓝色"]];
    s.frame = CGRectMake(50, 30, 100, 30);
    
    [s addTarget:self action:@selector(segClick:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:s];
    
    // Do any additional setup after loading the view.
}

-(void)segClick:(UISegmentedControl *)s{
    
    NSArray *arr = @[[UIColor redColor],[UIColor blueColor]];
    
    [self.dvc changeBackgroundColor:arr[s.selectedSegmentIndex]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
