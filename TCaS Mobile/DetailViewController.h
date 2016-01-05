//
//  DetailViewController.h
//  TCaS Mobile
//
//  Created by Kyle Zhou on 2016-01-04.
//  Copyright © 2016 Kyle Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

