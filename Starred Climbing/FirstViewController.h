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
@property (weak, nonatomic) IBOutlet UIPickerView *timeOfDayYearPicker;
@property (weak, nonatomic) IBOutlet UITextField *difficultyTextField;
- (IBAction)sortButtonPushed:(UIButton *)sender;

// ----- Instnaces of Classes ------
//@property (strong, nonatomic) Operations *operations;
@property (strong, nonatomic) TestDataModelImport *data;
@property (strong, nonatomic) Crag *crag;

// ----- Arrays -----
@property (strong, nonatomic) NSMutableArray *emptyArray;








@end

