//
//  ViewController.h
//  UITableView
//
//  Created by Ferrakkem on 3/1/17.
//  Copyright © 2017 Ferrakkem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *table;

- (IBAction)editTapped:(id)sender;
- (IBAction)refreshtapped:(id)sender;


@end

