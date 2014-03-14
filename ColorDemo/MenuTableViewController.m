//
//  MenuTableViewController.m
//  ColorDemo
//
//  Copyright (c) 2014 makoto_kw. All rights reserved.
//

#import "MenuTableViewController.h"
#import "UIColor+WZYFlatUI.h"

@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

{
    NSArray *_menuItems;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"WZYFlatUIColor";
    
    _menuItems = @[
        @{ @"title": @"wzy_turquoiseFlatColor" },
        @{ @"title": @"wzy_greenSeaFlatColor" },
        @{ @"title": @"wzy_emeraldFlatColor" },
        @{ @"title": @"wzy_nephritisFlatColor" },
        @{ @"title": @"wzy_peterRiverFlatColor" },
        @{ @"title": @"wzy_belizeHoleFlatColor" },
        @{ @"title": @"wzy_amethystFlatColor" },
        @{ @"title": @"wzy_wisteriaFlatColor" },
        @{ @"title": @"wzy_wetAsphaltFlatColor" },
        @{ @"title": @"wzy_midnightBlueFlatColor" },
        @{ @"title": @"wzy_sunFlowerFlatColor" },
        @{ @"title": @"wzy_orangeFlatColor" },
        @{ @"title": @"wzy_carrotFlatColor" },
        @{ @"title": @"wzy_pumpkinFlatColor" },
        @{ @"title": @"wzy_alizarinFlatColor" },
        @{ @"title": @"wzy_pomegranateFlatColor" },
        @{ @"title": @"wzy_cloudsFlatColor" },
        @{ @"title": @"wzy_silverFlatColor" },
        @{ @"title": @"wzy_concreteFlatColor" },
        @{ @"title": @"wzy_asbestosFlatColor" },
                 ];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"menuCell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSDictionary *item = _menuItems[indexPath.row];
    cell.textLabel.text = item[@"title"];
    
    SEL sel = NSSelectorFromString(item[@"title"]);
    if ([[UIColor class] respondsToSelector:sel]) {
        cell.backgroundColor = [[UIColor class] performSelector:sel];
    }

    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
