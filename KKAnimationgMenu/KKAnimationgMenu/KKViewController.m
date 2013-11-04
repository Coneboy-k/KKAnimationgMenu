//
//  KKViewController.m
//  KKAnimationgMenu
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 Coneboy_K. All rights reserved.
//

#import "KKViewController.h"


@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    


    
}

- (void)viewDidAppear:(BOOL)animated
{
    
    NSArray *bb = @[@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png",@"9.png",@"10.png",@"11.png",@"12.png"];
    
    KKAnimationgMenu *aa = [[KKAnimationgMenu alloc]initWithImages:bb withFrame:self.view.frame wideNum:3 highNum:4];
    aa.delegate = self;
    [self.view addSubview:aa];
}


- (void)kkMenu:(KKAnimationgMenu *)aa didTapkkMenuAtIndex:(NSUInteger)index
{
    NSLog(@"indexindex=====%i",index);
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
