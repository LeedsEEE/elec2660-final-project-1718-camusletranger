//
//  FirstViewController.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 10/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestDataModelImport.h"
#import "CragListTableViewController.h"

@interface FirstViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate>

//----- Interface Buttons, Labels, Pickers etc. -----

@property (weak, nonatomic) IBOutlet UIPickerView *timeOfDayYearPicker; // Picker to select the time of day and year. These variable are then used to deterimne the crags selected for the table view

@property (weak, nonatomic) IBOutlet UITextField *difficultyTextField; // Text field to be used to select the grade/difficulty of the routes desires which are then displayed in the second table view

- (IBAction)sortButtonPushed:(UIButton *)sender; // When press the view changes to the crag table view

// ----- Instances of Classes ------

@property (strong, nonatomic) TestDataModelImport *data;
@property (strong, nonatomic) Crag *crag;

@end

