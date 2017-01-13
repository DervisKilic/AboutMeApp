//
//  PicturesView.m
//  Labb1
//
//  Created by Dervis Kilic on 13/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "PicturesView.h"
#import "SettingsView.h"
@interface PicturesView ()

@end

@implementation PicturesView
SettingsView *s4;
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
    s4 = [[SettingsView alloc] init];
    
    self.view.backgroundColor = [UIColor colorWithRed:s4.red/255.0 green:s4.green/255.0 blue:s4.blue/255.0 alpha:1.0];
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
    self.view.backgroundColor = [UIColor colorWithRed:s4.red/255.0 green:s4.green/255.0 blue:s4.blue/255.0 alpha:1.0];
    [super viewDidAppear:animated];
}


@end
