//
//  TableViewController.h
//  Soundcloud Practice
//
//  Created by Goodman, Jarryd A - (jarryd999) on 10/3/14.
//  Copyright (c) 2014 Goodman, Jarryd A - (jarryd999). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface TableViewController : UITableViewController
<AVAudioPlayerDelegate>

@property (nonatomic,strong) NSArray *tracks;

@end
