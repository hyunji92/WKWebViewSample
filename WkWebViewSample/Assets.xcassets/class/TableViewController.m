//
//  TableViewController.m
//  WkWebViewSample
//
//  Created by Infobank_mac on 10/4/16.
//  Copyright © 2016 Infobank_mac. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

NSMutableArray *array;


- (void)viewDidLoad {
    [super viewDidLoad];
    array = [NSMutableArray arrayWithObjects:@"Apple",@"Bob",@"Grape",@"Apple",@"Apple",@"Apple",nil];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = [array objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"more text";
    cell.imageView.image = [UIImage imageNamed:@"imac.png"];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
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
