//
//  AboutMeView.m
//  Labb1
//
//  Created by Dervis Kilic on 13/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "AboutMeView.h"
#import "SettingsView.h"
@interface AboutMeView ()

@end

@implementation AboutMeView
SettingsView *s2;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self backgroundColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)backgroundColor {
    s2 = [[SettingsView alloc] init];
    
    self.view.backgroundColor = [UIColor colorWithRed:s2.red/255.0 green:s2.green/255.0 blue:s2.blue/255.0 alpha:1.0];
}

-(void) viewWillDisappear:(BOOL)animated
{
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound)
    {
        [self.navigationController popViewControllerAnimated:NO];
    }
    [super viewWillDisappear:animated];
}

- (void) viewDidAppear:(BOOL) animated {
    self.view.backgroundColor = [UIColor colorWithRed:s2.red/255.0 green:s2.green/255.0 blue:s2.blue/255.0 alpha:1.0];
    [super viewDidAppear:animated];
}
@end
