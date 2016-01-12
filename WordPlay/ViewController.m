//
//  ViewController.m
//  WordPlay
//
//  Created by Rafael Auriemo on 1/11/16.
//  Copyright (c) 2016 Rafael Auriemo. All rights reserved.
//

#import "ViewController.h"
#import "ResultsViewController.h"

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

-(IBAction)unwindToRoot:(UIStoryboardSegue *)unwindSegue{
    //ResultsViewController* sourceViewController = unwindSegue.sourceViewController;

}
@end
