//
//  EnterNameViewController.m
//  
//
//  Created by Rafael Auriemo on 1/11/16.
//
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (self.nameTextField.text.length >0) {
        return true;
    }
    else {
        return false;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    EnterAdjectiveViewController *destination = segue.destinationViewController;
    
    destination.name = self.nameTextField.text;

}




@end
