//
//  ClimbInformationViewController.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 06/12/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "ClimbInformationViewController.h"

@interface ClimbInformationViewController ()

@end

@implementation ClimbInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.viewTitle.text = @"Climb";
    self.climbName.text = self.climbPush.climbName;
    self.climbCrag.text = self.climbPush.climbAtCrag;
    self.climbGrade.text = self.climbPush.climbDifficulty;
    self.climbQuality.text = self.climbPush.climbQuality;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
