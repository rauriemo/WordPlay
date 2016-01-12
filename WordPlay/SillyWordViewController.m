//
//  SillyWordViewController.m
//  
//
//  Created by Rafael Auriemo on 1/11/16.
//
//

#import "SillyWordViewController.h"
#import "ResultsViewController.h"

@interface SillyWordViewController ()

@property (weak, nonatomic) IBOutlet UITextField *sillyWordTextField;

@end

@implementation SillyWordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.sillyWordTextField.text.length >0) {
        return true;
    }
    else {
        return false;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ResultsViewController *destination = segue.destinationViewController;
    
    destination.name = self.name;
    destination.adjective = self.adjective;
    destination.noun = self.noun;
    destination.sillyWord = self.sillyWordTextField.text;
    
}

@end
