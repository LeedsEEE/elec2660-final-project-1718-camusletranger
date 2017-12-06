//
//  ClimbInformationViewController.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 06/12/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClimbInformationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *viewTitle;
@property (weak, nonatomic) IBOutlet UILabel *climbName;
@property (weak, nonatomic) IBOutlet UILabel *climbCrag;
@property (weak, nonatomic) IBOutlet UILabel *climbGrade;
@property (weak, nonatomic) IBOutlet UILabel *climbQuality;

@end
