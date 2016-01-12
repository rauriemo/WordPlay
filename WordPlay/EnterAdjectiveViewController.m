//
//  EnterAdjectiveViewController.m
//  
//
//  Created by Rafael Auriemo on 1/11/16.
//
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *destination = segue.destinationViewController;
    
    destination.adjectives = self.adjectiveTextField.text;
    
    destination.name = self.name; 
    
  
}


@end
