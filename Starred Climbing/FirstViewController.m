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
    
    self.crag = [[Crag alloc] init];
    self.data = [[TestDataModelImport alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)sortButtonPushed:(UIButton *)sender {
    
   // self.data.inputClimbDifficulty = self.difficultyTextField.text;
    
    NSLog(@"Climb Difficulty: %@", self.data.inputClimbDifficulty);
    NSLog(@"Text Field: %@", self.difficultyTextField.text);
    
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
        
        title = [self.data.timeOfDayArray objectAtIndex:row]; // Populates rows in picker with the time of day array of string objects

    }
    else if (component == 1) {
        
        title = [self.data.timOfYearArray objectAtIndex:row]; // As above but for time of year
        
    }
    return title;
    
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {

    self.data.timeOfDayPosition = [self.timeOfDayYearPicker selectedRowInComponent:0];
    self.data.timeOfYearPosition = [self.timeOfDayYearPicker selectedRowInComponent:1];
    
    // Given the timeOfDayPosition and the
    
    self.data.timeOfDay = self.data.convertToStringDay;
    self.data.timeOfYear = self.data.convertToStringYear;
    
    NSLog(@"Time of Day,Year %@, %@", self.data.timeOfDay, self.data.timeOfYear);
    
    int i = 0;
    
    for (i = 0; i < [self.data.crags count]; ++i) { // Equates the number of crags in datamodel for the for loop counter
        
        Crag *crag = [self.data.crags objectAtIndex:i];
    
        [self.data addCragToArray:crag];
        
    //[self.data cragForArray];
    }
}
#pragma mark Text Field Delegate Methods


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    
    return YES;
}


#pragma mark Time of Day and Year Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 2;
    
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rows;
    
    if (component == 0) { // Component for time of day, morning, afternoon, or evening
        
        
        rows = [self.data.timeOfDayArray count];
    }
    else if (component == 1) {  // Component for time of year, winter, spring, summer or autumn
        
        rows = [self.data.timOfYearArray count];
    }
    
    return rows;
    
}

#pragma mark - Navigation View controller

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([[segue identifier] isEqualToString:@"ShowCragDetails"]) {
 
        CragListTableViewController *destinationViewcontroller = [segue destinationViewController];
        
            
        TestDataModelImport *tempData = self.data; // A tempory Operations class within which the array selectedCrags, from the addCrag method will be called to populate the table view
        
        destinationViewcontroller.tableData = tempData; //Within the TableViewController the tableOperations will call the relevent features of each Crag selected
    }
}






@end
