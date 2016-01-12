//
//  EnterAdjectiveViewController.m
//  
//
//  Created by Rafael Auriemo on 1/11/16.
//
//

#import "EnterAdjectiveViewController.h"
#import "EnterNounViewController.h"

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

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.adjectiveTextField.text.length >0) {
        
        return true;
    }
    
    else {
        return false;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterNounViewController *destination = segue.destinationViewController;
    
    destination.adjective = self.adjectiveTextField.text;
    
    destination.name = self.name; 
  
}


@end
