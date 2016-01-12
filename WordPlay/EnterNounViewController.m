//
//  EnterNounViewController.m
//  
//
//  Created by Rafael Auriemo on 1/11/16.
//
//

#import "EnterNounViewController.h"
#import "SillyWordViewController.h"

@interface EnterNounViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation EnterNounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.nounTextField.text.length >0) {
        return true;
    }
    else {
        return false;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    SillyWordViewController *destination = segue.destinationViewController;
    
    destination.name = self.name;
    destination.adjective = self.adjective;
    destination.noun = self.nounTextField.text;
    
}


@end
