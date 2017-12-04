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
    
    self.operations = [[Operations alloc] init];
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
        
        title = [self.operations.timeOfDayArray objectAtIndex:row]; // Populates rows in picker with the array of string objects

    }
    else if (component == 1) {
        
        title = [self.operations.timOfYearArray objectAtIndex:row];
        
    }
    return title;
    
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {

       //self.operations = [[Operations alloc] init];
       //self.data = [[TestDataModelImport alloc] init];

    //self.search.selectedCrags = [NSMutableArray array];
    self.operations.timeOfDayPosition = [self.timeOfDayYearPicker selectedRowInComponent:0];
    self.operations.timeOfYearPosition = [self.timeOfDayYearPicker selectedRowInComponent:1];
    
    // NSLog(@"Postion Day: %li", (long)self.operations.timeOfDayPosition);
    // NSLog(@"Postion Year: %li", (long)self.operations.timeOfYearPosition);

    int i = 0;
   
    for (i = 0; i < [self.data.crags count]; ++i) { // Establishes number of crags in datamodel for the for loop
       
        Crag *crag = [self.data.crags objectAtIndex:i];

        
    
       // NSString *day = self.operations.convertToStringDay;
       // NSString *year = self.operations.convertToStringYear;
        
       //  NSLog(@"Crag Name: %@", crag.cragName);

        NSLog(@"Postion Day: %li", (long)self.operations.timeOfDayPosition);
        NSLog(@"Postion Year: %li", (long)self.operations.timeOfYearPosition);
        NSLog(@"Converted to String: %@", self.operations.convertToStringDay);
        NSLog(@"Converted to String: %@", self.operations.convertToStringYear);
        NSLog(@"Crag time of day: %@", crag.cragTOD);
        NSLog(@"Crag time of year: %@", crag.cragTOY);

        if ([crag.cragTOD isEqualToString: self.operations.convertToStringDay] && [crag.cragTOY isEqualToString: self.operations.convertToStringYear] ) {
            
            NSLog(@"POST IF STATEMNT");
            NSLog(@"Postion Day: %li", (long)self.operations.timeOfDayPosition);
            NSLog(@"Postion Year: %li", (long)self.operations.timeOfYearPosition);
            NSLog(@"Converted to String: %@", self.operations.convertToStringDay);
            NSLog(@"Converted to String: %@", self.operations.convertToStringYear);
            NSLog(@"Crag time of day: %@", crag.cragTOD);
            NSLog(@"Crag time of year: %@", crag.cragTOY);

            
           // NSLog(@"Crag Name: %@", crag.cragName);

            
             //[self.search addCrag:[self.data.crags objectAtIndex:i]];
            //[self.operations addCrag: crag];
            //self.emptyArray = [[NSMutableArray alloc] initWithObjects: [self.data.crags objectAtIndex:i], nil];


            [self.operations.selectedCrags addObject: [self.data.crags objectAtIndex: i]];
        }

        NSLog(@"Crag Name: %@", self.operations.selectedCrags);

    }

  //  NSLog(@"Name: %@'", self.crag.cragName);

}

#pragma mark Time of Day and Year Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 2;
    
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rows;
    
    if (component == 0) { // Component for time of day, morning, afternoon, or evening
        
        
        rows = [self.operations.timeOfDayArray count];
    }
    else if (component == 1) {  // Component for time of year, winter, spring, summer or autumn
        
        rows = [self.operations.timOfYearArray count];
    }
    
    return rows;
    
}

#pragma mark - Navigation View controller

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([[segue identifier] isEqualToString:@"ShowCragDetails"]) {
 
        CragListTableViewController *destinationViewcontroller = [segue destinationViewController];
        
        
        Operations *tempOperations = self.operations; // A tempory Operations class within which the array selectedCrags, from the addCrag method will be called to populate the table view
        
        destinationViewcontroller.tableOperations = tempOperations; //Within the TableViewController the tableOperations will call the relevent features of each Crag selected
        
    }
}






@end
