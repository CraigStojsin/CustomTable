//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by Craig Stojsin on 2015-04-14.
//  Copyright (c) 2015 Codes By Craig. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"
@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
{
    NSArray* recipeNames;
    NSArray* recipeTimes;
    NSArray* recipeImages;
    BOOL*  recipeChecked[16];
}





    

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [recipeNames count];
   
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *cellIdentifier = @"Cell";
    
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView
                                                        dequeueReusableCellWithIdentifier:cellIdentifier];
 
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages
                                                         objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [recipeTimes objectAtIndex:indexPath.row];
    
    if (recipeChecked[indexPath.row]) {
    
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

    
   
    return cell;
}


- (void)viewDidLoad {
    [super viewDidLoad];
   
    recipeTimes = @[@"One Hour",@"Three Hours",@"Two Hours",@"Four Hours"
                    ,@"Two Hours",@"Ten Minutes"
                    ,@"One and a half Hours",@"Two Hours",@"Two Hours",@"Two Hours"
                    ,@"Two Hours",@"TwoHours",@"Two Hours"
                    ,@"Two Hours",@"Two Hours",@"Two Hours"];
    
    
    recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast",@"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White ChocolateDonut",@"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodlewith BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
    
    
    
    recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg",
                     @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg",
                     @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg",
                     @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg",
                     @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg",
                     @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];
    
    
   
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}


- (void)tableView:(UITableView *)tableView  didSelectRowAtIndexPath:(NSIndexPath *)indexPath
    

{
    NSString* selectedRecipe = [recipeNames objectAtIndex:indexPath.row];
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:selectedRecipe delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [messageAlert show];
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (recipeChecked[indexPath.row]){
        recipeChecked[indexPath.row] = NO;
        cell.accessoryType = UITableViewCellAccessoryNone;
    
    } else {
         recipeChecked[indexPath.row] = YES;
         cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
    
}




/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/





@end
