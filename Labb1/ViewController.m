//
//  ViewController.m
//  Labb1
//
//  Created by Dervis Kilic on 10/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "ViewController.h"
#import "SettingsView.h"

@interface ViewController ()

@end

@implementation ViewController
BOOL standardColor = YES;
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

- (IBAction) settingsPressed:(UIButton *)sender {
    standardColor = NO;
}


-(void) getBackground {
    
    if(standardColor){
    self.view.backgroundColor = [UIColor whiteColor];
        
    }else{
        self.view.backgroundColor = [UIColor colorWithRed:red/255.0
                                                    green:green/255.0
                                                     blue:blue/255.0
                                                    alpha:1.0];
    }
}

@end
