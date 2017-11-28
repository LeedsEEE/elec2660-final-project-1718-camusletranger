//
//  FirstViewController.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 10/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchOperations.h"

@interface FirstViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *timeOfDayYearPicker;

@property (strong, nonatomic) SearchOperations *search;

- (IBAction)gradeRangeEntered:(UITextField *)sender;
- (IBAction)sortButtonPushed:(UIButton *)sender;




@end

