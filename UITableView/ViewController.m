//
//  ViewController.m
//  UITableView
//
//  Created by Ferrakkem on 3/1/17.
//  Copyright © 2017 Ferrakkem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *imageArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imageArray = [NSMutableArray arrayWithArray:@[@"7.jpg",@"8.jpg",@"9.jpg"]];
    NSLog(@"%@", imageArray);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return imageArray.count;
}

#pragma mark :: show details in Table Cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell.imageView.image = [UIImage imageNamed:imageArray[indexPath.row]];
    cell.textLabel.text = imageArray[indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", (int)indexPath.row +1];
    cell.contentView.layer.cornerRadius = 10;
    cell.contentView.layer.borderWidth = 2;
    cell.contentView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    
    
    return cell;
}

#pragma mark :: Delete Row from Table
-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [imageArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editTapped:(id)sender {
    _table.editing = ! _table.editing;
}

- (IBAction)refreshtapped:(id)sender {
    [_table reloadData];
}
@end
