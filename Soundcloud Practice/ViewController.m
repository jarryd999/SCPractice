//
//  ViewController.m
//  Soundcloud Practice
//
//  Created by Goodman, Jarryd A - (jarryd999) on 10/2/14.
//  Copyright (c) 2014 Goodman, Jarryd A - (jarryd999). All rights reserved.
//

#import "ViewController.h"
#import "SCUI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    SCLoginViewControllerCompletionHandler handler = ^(NSError *error) {
        if (SC_CANCELED(error)) {
            NSLog(@"Cancelled!");
        } else if (error) {
            NSLog(@"Error: %@\n", [error localizedDescription]);
        } else{
            NSLog(@"Done!");
        }
    };
    
    
    [SCSoundCloud requestAccessWithPreparedAuthorizationURLHandler:^(NSURL *preparedURL) {
        SCLoginViewController *loginViewController;
        
        loginViewController = [SCLoginViewController loginViewControllerWithPreparedURL:preparedURL completionHandler:handler];
        [self presentModalViewController:loginViewController animated:YES];
    }];
}

@end
