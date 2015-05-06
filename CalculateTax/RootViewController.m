//
//  RootViewController.m
//  CalculateTax
//
//  Created by Michael Kozy on 5/6/15.
//  Copyright (c) 2015 Michael Kozy. All rights reserved.
//

#import "RootViewController.h"
//declarations
@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;

@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;
    //sets each double to respective tax in decimal

}
- (IBAction)onCalculateButtonTapped:(id)sender {


    NSString *userInteger = self.priceTextField.text;
    double userValue = userInteger.intValue;
    //converts string to double

    if (self.segmentedControl.selectedSegmentIndex==0) {
        double results = userValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@" California tax $%.2f", results];
    }

    else if(self.segmentedControl.selectedSegmentIndex==1) {
        double results =userValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@" Chicago tax $%.2f", results];
    }

    else {
        double results =userValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@" New York tax $%.2f", results];

        //Conditional statement formats results based on location selection and returns to enduser in return label
    }


}



@end
