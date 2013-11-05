//
//  KKViewController.m
//  KKAnimationgMenu  
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 Coneboy_K. All rights reserved.
//

#import "KKViewController.h"
#import "UIColor+KKColor.h"



@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    
}
- (IBAction)showMenu:(id)sender
{
    
    if (!kkMenu) {
        CGRect frameTmp = CGRectMake(0, 20, 320, 126*4);
        
        NSArray *bb = @[@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png"];
        kkMenu= [[KKAnimationgMenu alloc]initWithImages:bb withFrame:frameTmp wideNum:2 highNum:4];
        kkMenu.delegate = self;
        
        [self.view addSubview:kkMenu];
    }
   
    
}
- (IBAction)dimissMebu:(id)sender {
    if (kkMenu)
    {
           [kkMenu removeFromSuperview];
        kkMenu = nil;
    }
 
}


#pragma mark - KKAnimationgMenu delegate

- (void)kkMenu:(KKAnimationgMenu *)aa didTapkkMenuAtIndex:(NSUInteger)index
{
    NSLog(@"indexindex=====%i",index);
    _indexLable.text = [NSString stringWithFormat:@"U Select %i view ",index];
    _indexLable.textColor = [UIColor colorWithRed:0.0f green:0.49f blue:0.96f alpha:1.0f];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
