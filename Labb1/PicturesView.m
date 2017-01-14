//
//  PicturesView.m
//  Labb1
//
//  Created by Dervis Kilic on 13/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "PicturesView.h"
#import "SettingsView.h"
#import "ViewController.h"
@interface PicturesView ()

@end

@implementation PicturesView
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL) animated {
    [self getBackground];
    [super viewDidAppear:animated];
}

-(void) getBackground {
    if(!standardColor){
        self.view.backgroundColor = [UIColor colorWithRed:red/255.0
                                                    green:green/255.0
                                                     blue:blue/255.0
                                                    alpha:1.0];
        
    }
}

@end
