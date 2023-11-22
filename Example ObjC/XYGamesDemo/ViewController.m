//
//  ViewController.m
//  XYGamesDemo
//
//  Created by Paul on 2023/11/22.
//

#import "ViewController.h"
#import "XYGamesKit-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UIViewController *vc = [XYManager createViewController];
    [self presentViewController:vc animated:true completion:^{
        
    }];
}


@end
