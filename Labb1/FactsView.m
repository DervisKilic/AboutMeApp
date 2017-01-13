//
//  FactsView.m
//  Labb1
//
//  Created by Dervis Kilic on 13/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "FactsView.h"
#import "SettingsView.h"
@interface FactsView ()

@end

@implementation FactsView
SettingsView *s3;
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
    s3 = [[SettingsView alloc] init];
    
    self.view.backgroundColor = [UIColor colorWithRed:s3.red/255.0 green:s3.green/255.0 blue:s3.blue/255.0 alpha:1.0];
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
    self.view.backgroundColor = [UIColor colorWithRed:s3.red/255.0 green:s3.green/255.0 blue:s3.blue/255.0 alpha:1.0];
    [super viewDidAppear:animated];
}


@end
