//
//  ViewController.h
//  PTColorChangeApp
//
//  Created by Student P_06 on 08/09/16.
//  Copyright © 2016 Purushottam Tayade. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    float red;
    float green;
    float blue;
    float alpha;
}

@property (weak, nonatomic) IBOutlet UILabel *labelColorChangeApp;
@property (weak, nonatomic) IBOutlet UILabel *labelRed;
@property (weak, nonatomic) IBOutlet UILabel *labelGreen;
@property (weak, nonatomic) IBOutlet UILabel *labelBlue;
@property (weak, nonatomic) IBOutlet UILabel *labelAlpha;

- (IBAction)sliderRed:(id)sender;
- (IBAction)sliderGreen:(id)sender;
- (IBAction)sliderBlue:(id)sender;
- (IBAction)sliderAlpha:(id)sender;


@property (weak, nonatomic) IBOutlet UISlider *redSliderOutlet;
@property (weak, nonatomic) IBOutlet UISlider *greenSliderOutlet;
@property (weak, nonatomic) IBOutlet UISlider *blueSliderOutlet;
@property (weak, nonatomic) IBOutlet UISlider *alphaSliderOutlet;

@property (weak, nonatomic) IBOutlet UILabel *valueRedChanged;
@property (weak, nonatomic) IBOutlet UILabel *valueGreenChanged;
@property (weak, nonatomic) IBOutlet UILabel *valueBlueChanged;
@property (weak, nonatomic) IBOutlet UILabel *valueAlphaChanged;

- (IBAction)resetButton:(id)sender;









@end

