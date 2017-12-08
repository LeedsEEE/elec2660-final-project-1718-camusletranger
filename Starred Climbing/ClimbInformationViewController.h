//
//  ClimbInformationViewController.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 06/12/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//
//----- CLIMB INFORMATION VIEW CONTROLLER -----
//Class, that includes details of sepcific climbs 

#import <UIKit/UIKit.h>
#import "Crag.h"

@interface ClimbInformationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *viewTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *climbNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *climbCragLabel;
@property (weak, nonatomic) IBOutlet UILabel *climbGradeLabel;
@property (weak, nonatomic) IBOutlet UILabel *climbQualityLabel;



@property (strong, nonatomic) Climb *climbPush;

@end
