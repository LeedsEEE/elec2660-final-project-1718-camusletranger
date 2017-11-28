//
//  FirstViewController.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 10/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    self.timeOfDayYearPicker.delegate = self;
    self.timeOfDayYearPicker.dataSource = self;
    
    self.search = [[SearchOperations alloc] init];
     
     }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)gradeRangeEntered:(UITextField *)sender {
    
    
}

- (IBAction)sortButtonPushed:(UIButton *)sender {
}

#pragma mark Time of Day and Year Picker Delegate Methods

/*- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {

    UIView *band = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 50, 30)];

    
    if (component == 0) {
        
        band.text = [self.search.timeOfDayArray objectAtIndex:row];
        
        
    }
}*/

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    NSString *title;
    
    if(component == 0) {
        
        title = [self.search.timeOfDayArray objectAtIndex:row]; // Populates rows in picker with the array of string objects

    }
    else if (component == 1) {
        
        title = [self.search.timOfYearArray objectAtIndex:row];
        
    }
    return title;
    
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {

    self.search.timeOfDay = [self.timeOfDayYearPicker selectedRowInComponent:0];
    self.search.timeOfYear = [self.timeOfDayYearPicker selectedRowInComponent:1];
    
    
    
}

#pragma mark Time of Day and Year Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 2;
    
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rows;
    
    if (component == 0) { // Component for time of day, morning, afternoon, or evening
        
        
        rows = [self.search.timeOfDayArray count];
    }
    else if (component == 1){  // Component for time of year, winter, spring, summer or autumn
        
        rows = [self.search.timOfYearArray count];
    }
    
    return rows;
    
}






@end
