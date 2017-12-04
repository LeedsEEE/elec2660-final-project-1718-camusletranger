//
//  FirstViewController.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 10/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "FirstViewController.h"
#import "Operations.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    self.timeOfDayYearPicker.delegate = self;
    self.timeOfDayYearPicker.dataSource = self;
    
    self.search = [[Operations alloc] init];
    self.data = [[TestDataModelImport alloc] init];
    self.crag = [[Crag alloc] init];

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

    self.search.timeOfDayPosition = [self.timeOfDayYearPicker selectedRowInComponent:0];
    self.search.timeOfYearPosition = [self.timeOfDayYearPicker selectedRowInComponent:1];
    
    self.search = [[Operations alloc] init];
    self.data = [[TestDataModelImport alloc] init];

    //self.search.selectedCrags = [NSMutableArray array];
    
    int i = 0;
    
    if (component == 0) {
        self.search.timeOfDay = [self.search.timeOfDayArray objectAtIndex:row];
    }
    if (component == 1) {
        self.search.timeOfYear = [self.search.timOfYearArray objectAtIndex:row];
    }

    for (i = 0; i < [self.data.crags count]; ++i) { // Establishes number of crags in datamodel for the for loop
        
        Crag *crag = [self.data.crags objectAtIndex:i];
        
        if ([crag.cragTOD isEqualToString: self.search.convertToStringDay] && [crag.cragTOY isEqualToString: self.search.convertToStringYear] ) {
    
            
             //[self.search addCrag:[self.data.crags objectAtIndex:i]];
             [self.search addCrag: crag];

    
            // [self.emptyArray addObject: [self.data.crags objectAtIndex: i]];
        }



    }

    NSLog(@"Name: %@'", self.crag.cragName);

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
    else if (component == 1) {  // Component for time of year, winter, spring, summer or autumn
        
        rows = [self.search.timOfYearArray count];
    }
    
    return rows;
    
}

#pragma mark - Navigation View controller

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([[segue identifier] isEqualToString:@"ShowCragDetails"]) {
 
        CragListTableViewController *destinationViewcontroller = [segue destinationViewController];
        
        // Need to get required information to pass to table view
        // Need to pass a new array to populate the table view in the next screen
        
    //     Crag *tempCrag = [self.data.crags objectAtIndex:<#(NSUInteger)#>;
      //   destinationViewcontroller.crag = tempCrag;
        
        Crag *tempCrag = self.search.selectedCrags;
        
        
    }
}






@end
