//
//  ViewController.m
//  PTColorChangeApp
//
//  Created by Student P_06 on 08/09/16.
//  Copyright © 2016 Purushottam Tayade. All rights reserved.
//

#import "ViewController.h"
typedef enum : NSUInteger {
    Red = 0,
    Green = 1,
    Blue = 2,
    Alpha = 3,
} ColorComponent;



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    red = 0.0;
    green = 0.0;
    blue = 0.0;
    alpha = 1.0;
    self.valueRedChanged.text = @"0.000";
    self.valueGreenChanged.text = @"0.000";
    self.valueBlueChanged.text = @"0.000";
    self.valueAlphaChanged.text = @"1.000";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)changedColor:(UISlider *)changedSlider WithColorComponent:(ColorComponent)color{
    
    switch (color) {
        case Red:
            red = changedSlider.value;
            [self.view setBackgroundColor:[UIColor colorWithRed:red green:green blue:blue alpha:alpha]];
            [self.labelColorChangeApp setText:@"Red slider is changing"];
            [self.labelColorChangeApp setTextColor:[UIColor colorWithRed:red green:green blue:blue alpha:alpha]];
            [self.labelColorChangeApp setBackgroundColor:[UIColor colorWithRed:red green:red blue:red alpha:alpha]];
            self.valueRedChanged.text = [NSString stringWithFormat:@"%0.3f",red];

            break;
            
        case Green:
            green = changedSlider.value;
            [self.view setBackgroundColor:[UIColor colorWithRed:red green:green blue:blue alpha:alpha]];
            [self.labelColorChangeApp setText:@"Green slider is changing"];
            [self.labelColorChangeApp setTextColor:[UIColor colorWithRed:red green:green blue:blue alpha:alpha]];
            [self.labelColorChangeApp setBackgroundColor:[UIColor colorWithRed:green green:green blue:green alpha:alpha]];
            self.valueGreenChanged.text = [NSString stringWithFormat:@"%0.3f",green];
            
            break;
         
        case Blue:
            blue = changedSlider.value;
            [self.view setBackgroundColor:[UIColor colorWithRed:red     green:green blue:blue alpha:alpha]];
            [self.labelColorChangeApp setText:@"Blue slider is changing"];
            [self.labelColorChangeApp setTextColor:[UIColor colorWithRed:red green:green blue:blue alpha:alpha]];
            [self.labelColorChangeApp setBackgroundColor:[UIColor colorWithRed:blue green:blue blue:blue alpha:alpha]];
            self.valueBlueChanged.text = [NSString stringWithFormat:@"%0.3f",blue];
            break;
            
        case Alpha:
            alpha = changedSlider.value;
            [self.view setBackgroundColor:[UIColor colorWithRed:red     green:green blue:blue alpha:alpha]];
            [self.labelColorChangeApp setText:@"Transperancy is Changing"];
            self.valueAlphaChanged.text = [NSString stringWithFormat:@"%0.3f",alpha];
    }
}

- (IBAction)sliderRed:(id)sender {
    UISlider *slider = sender;
    [self changedColor:slider WithColorComponent:Red];
}

- (IBAction)sliderGreen:(id)sender {
    UISlider *slider = sender;
    [self changedColor:slider WithColorComponent:Green];
}

- (IBAction)sliderBlue:(id)sender {
    UISlider *slider = sender;
    [self changedColor:slider WithColorComponent:Blue];
}



- (IBAction)sliderAlpha:(id)sender {
    UISlider *slider = sender;
    [self changedColor:slider WithColorComponent:Alpha];
}

- (IBAction)resetButton:(id)sender {
    red = 0.0;
    green = 0.0;
    blue = 0.0;
    alpha = 1.0;
    self.valueRedChanged.text = @"0.000";
    self.valueGreenChanged.text = @"0.000";
    self.valueBlueChanged.text = @"0.000";
    self.valueAlphaChanged.text = @"1.000";
    
    self.redSliderOutlet.value = 0.0;
    self.greenSliderOutlet.value = 0.0;
    self.blueSliderOutlet.value = 0.0;
    self.alphaSliderOutlet.value = 1.0;

    [self.view setBackgroundColor:[UIColor colorWithRed:red     green:green blue:blue alpha:alpha]];
    [self.labelColorChangeApp setText:@""];
    [self.labelColorChangeApp setTextColor:[UIColor colorWithRed:red green:green blue:blue alpha:alpha]];
    [self.labelColorChangeApp setBackgroundColor:[UIColor colorWithRed:blue green:blue blue:blue alpha:alpha]];
    
}
@end