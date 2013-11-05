# KKAnimationgMenu
This is a menus about animation,it can let person comfortable.

[![](https://github.com/Coneboy-k/KKAnimationgMenu/blob/master/show.gif?raw=true)](https://github.com/Coneboy-k/KKAnimationgMenu/blob/master/show.gif?raw=true)

## Requirements
KKAnimationgMenu works on any iOS version. Only ARC.

## Adding KKAnimationgMenu to your project

Include KKAnimationgMenu wherever you need it with `#import "KKAnimationgMenu.h"`.

### Source files

Alternatively you can directly add the `KKAnimationgMenu.h`& `KKAnimationgMenu.m` &`KKImageView.h`&`KKImageView.m` source files to your project.

1. Download the [latest code version](https://github.com/Coneboy-k/KKAnimationgMenu/archive/master.zip) or add the repository as a git submodule to your git-tracked project. 
2. Open your project in Xcode, then drag and drop `KKAnimationgMenu.h`& `KKAnimationgMenu.m` &`KKImageView.h`&`KKImageView.m` onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project. 
3. Include KKAnimationgMenu wherever you need it with `#import "KKAnimationgMenu.h"`.

## Usage
```objective-c
CGRect frameTmp = CGRectMake(0, 20, 320, 126*4);
NSArray *bb = @[@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png",@"7.png",@"8.png"];
KKAnimationgMenu *kkMenu= [[KKAnimationgMenu alloc]initWithImages:bb withFrame:frameTmp wideNum:2 highNum:4];
kkMenu.delegate = self;
       
[self.view addSubview:kkMenu];
```

## Who use

>图说  http://www.tushuoapp.com/


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE). 

## Change-log

A brief summary of each KKAnimationgMenu release can be found on the [wiki](https://github.com/Coneboy-k/KKAnimationgMenu/wiki). 
