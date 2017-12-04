//
//  CragListTableViewController.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 10/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "CragListTableViewController.h"

@interface CragListTableViewController ()

@end

@implementation CragListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.data = [[TestDataModelSubclass alloc] init];
    self.tableOperations = [[Operations alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

 /*   NSInteger numberOfSections;

    numberOfSections = self.data.crags.count;
    
    return numberOfSections;

   */
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger numberOfRows;
    
    if (section == 0) {
        //numberOfRows = self.data.crags.count;
        numberOfRows = self.tableOperations.selectedCrags.count;
        
    }

    return numberOfRows;

//    return 1;
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CragCell" forIndexPath:indexPath];
   

    // Configure the cell...
   if (indexPath.section == 0) {
        
        Crag *tempCrags = [self.tableOperations.selectedCrags objectAtIndex:indexPath.row];
       
        cell.textLabel.text = tempCrags.cragName;
        cell.detailTextLabel.text = tempCrags.cragGuidebook;
        
    }
    
    return cell;

}
- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSString *header = [NSString stringWithFormat:@"Crags         Guide Book"];
    
    return header;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
 /*  if ( [[ segue identifier ] isEqualToString:@"ShowCragDetails"]) //Check whether segue identifier is the one specified
        
    {
        
        TableViewController *destinationTableViewController = [segue destinationViewController]; //Local copy of the destiantion ViewController
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //  To display the correct module we need to know which row was selected. This is done by getting the index path of the selected cell to then select the correct module from the array
        if (indexPath.section == 0) {
            
            Crag *tempCrag = [self.data.crags objectAtIndex:indexPath.row];
            destinationViewController.crag = tempCrag;
            
        }
  
    }

 */   
}


@end
