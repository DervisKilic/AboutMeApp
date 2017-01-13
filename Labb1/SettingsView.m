//
//  SettingsView.m
//  Labb1
//
//  Created by Dervis Kilic on 12/01/17.
//  Copyright © 2017 Dervis Kilic. All rights reserved.
//

#import "SettingsView.h"

@interface SettingsView ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;

@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;

@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;

@end

@implementation SettingsView
float red;
float green;
float blue;


- (void)refreshColorView {
    self.redLabel.text = [NSString stringWithFormat:@"%f", self.redSlider.value * 255];
    self.greenLabel.text = [NSString stringWithFormat:@"%f", self.greenSlider.value * 255];
    self.blueLabel.text = [NSString stringWithFormat:@"%f", self.blueSlider.value * 255];
    self.view.backgroundColor = [self currentColor];
}

- (UIColor*)currentColor {
    
    return [UIColor colorWithRed:self.redSlider.value
                                        green:self.greenSlider.value
                                         blue:self.blueSlider.value
                                        alpha:1.0];
}
- (IBAction)colorSliderChanged:(UISlider *)sender {
    [self refreshColorView];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self getBackGroundColor];
    [self refreshColorView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillDisappear:(BOOL)animated
{
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound)
    {
        red = _redSlider.value * 255;
        green = _greenSlider.value * 255;
        blue = _blueSlider.value * 255;
        
        [self.navigationController popViewControllerAnimated:NO];
    }
    [super viewWillDisappear:animated];
}

-(void)getBackGroundColor{
   _redSlider.value = red;
    _greenSlider.value = green;
    _blueSlider.value = blue;
}

-(float) red
{
    return red;
}

-(float) green
{
    return green;
}

-(float) blue
{
    return blue;
}

- (void) viewDidAppear:(BOOL) animated {
    _redSlider.value = red / 255;
    _greenSlider.value = green / 255;
    _blueSlider.value = blue / 255;
    [self refreshColorView];
    [super viewDidAppear:animated];
}


@end
