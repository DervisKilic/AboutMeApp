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
float redColor = 1;
float greenColor = 1;
float blueColor = 1;
BOOL standardBackground = YES;


- (void)refreshColorView {
    self.redLabel.text = [NSString stringWithFormat:@"%f", self.redSlider.value * 255];
    self.greenLabel.text = [NSString stringWithFormat:@"%f", self.greenSlider.value * 255];
    self.blueLabel.text = [NSString stringWithFormat:@"%f", self.blueSlider.value * 255];
    self.view.backgroundColor = [self setBackgroundColor];
}

- (UIColor*)setBackgroundColor {
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
    [self refreshColorView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) viewWillDisappear:(BOOL)animated
{
    if ([self.navigationController.viewControllers indexOfObject:self]==NSNotFound)
    {
        redColor = _redSlider.value;
        greenColor = _greenSlider.value;
        blueColor = _blueSlider.value;
        
        [self.navigationController popViewControllerAnimated:NO];
    }
    [super viewWillDisappear:animated];
}

- (void) viewWillAppear:(BOOL) animated {
    [self getColors];
    [self setBackgroundColor];
    [self refreshColorView];
    
    [super viewDidAppear:animated];
}

-(void) getColors{
    _redSlider.value = redColor;
    _greenSlider.value = greenColor;
    _blueSlider.value = blueColor;
}

@end
