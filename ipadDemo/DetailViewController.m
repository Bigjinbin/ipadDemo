//
//  DetailViewController.m
//  ipadDemo
//
//  Created by jb on 15/7/21.
//  Copyright (c) 2015年 jb. All rights reserved.
//

#import "DetailViewController.h"
#import "ConfigViewController.h"


@interface DetailViewController ()<UIPopoverControllerDelegate>
{
    UIPopoverController *_popView;
    
}
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [ UIColor lightGrayColor];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"配置" style:UIBarButtonItemStylePlain target:self action:@selector(rightbtnClick)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    
    ConfigViewController *cvc =[[ConfigViewController alloc]init];
    
    cvc.preferredContentSize = CGSizeMake(200, 400);
    
    _popView = [[UIPopoverController alloc]initWithContentViewController:cvc];
    // Do any additional setup after loading the view.
}

-(void)rightbtnClick{


    if (!_popView.isPopoverVisible) {
        [_popView presentPopoverFromBarButtonItem:self.navigationItem.rightBarButtonItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    else{
    
        [_popView dismissPopoverAnimated:YES];
    }
}
//视图影藏时执行
-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc{

    barButtonItem.title = @"分类";
    
    self.navigationItem.leftBarButtonItem = barButtonItem;
    

}

-(void)changeBackgroundColor:(UIColor *)color{
    self.view.backgroundColor = color;
    
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
