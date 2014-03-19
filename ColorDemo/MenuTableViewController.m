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
    
    _menuItems = @[@{
                       @"category": @"FlatUIColor",
                       @"items": @[
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
                           @{ @"title": @"wzy_asbestosFlatColor" }
                       ]
                   }, @{
                       @"category": @"iOS7Color",
                       @"items": @[
                           @{ @"title": @"wzy_redIOS7Color" },
                           @{ @"title": @"wzy_orangeIOS7Color" },
                           @{ @"title": @"wzy_yellowIOS7Color" },
                           @{ @"title": @"wzy_greenIOS7Color" },
                           @{ @"title": @"wzy_tealIOS7Color" },
                           @{ @"title": @"wzy_blueIOS7Color" },
                           @{ @"title": @"wzy_violetIOS7Color" },
                           @{ @"title": @"wzy_pinkIOS7Color" },
                           @{ @"title": @"wzy_midGrayIOS7Color" },
                           @{ @"title": @"wzy_grayIOS7Color" }
                       ]
                   }
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
    return _menuItems.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *items = _menuItems[section][@"items"];
    return items.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return _menuItems[section][@"category"];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 66.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 66)];
    headerView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.5];
    UILabel *label = [[UILabel alloc] initWithFrame:headerView.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = _menuItems[section][@"category"];
    label.textColor = [UIColor whiteColor];
    label.backgroundColor = [UIColor clearColor];
    [headerView addSubview:label];
    return headerView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"menuCell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSArray *items = _menuItems[indexPath.section][@"items"];
    NSDictionary *item = items[indexPath.row];
    cell.textLabel.text = item[@"title"];
    
    SEL sel = NSSelectorFromString(item[@"title"]);
    if ([[UIColor class] respondsToSelector:sel]) {
        cell.backgroundColor = [[UIColor class] performSelector:sel];
    }

    return cell;
}

@end
