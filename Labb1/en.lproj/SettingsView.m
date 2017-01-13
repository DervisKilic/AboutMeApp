//
//  SettingsView.m
//  Labb1
//
//  Created by Dervis Kilic on 12/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "SettingsView.h"

@interface SettingsView ()
+ (id)Settings:(Class)classe;

@end

@implementation SettingsView

+ (id)Settings:(Class)classe
{
    return [[classe alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
