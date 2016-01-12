//
//  ResultsViewController.m
//  
//
//  Created by Rafael Auriemo on 1/11/16.
//
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *mutArray= @[self.name, @" is partial to ", self.noun, @", and is super awesome because they are ", self.adjective, @". ", self.sillyWord, @"!" ];
    
    
    NSAttributedString *message;
    NSMutableAttributedString *mutMessage = [[NSMutableAttributedString alloc] init];
    for (int i=0; i<mutArray.count; i++) {
        if (i%2 != 0) {
            //append
            message = [[NSAttributedString alloc] initWithString:mutArray[i] attributes:nil];
            [mutMessage appendAttributedString:message];
        }else{
            //bold then append
            message = [[NSAttributedString alloc] initWithString:mutArray[i] attributes:@{ NSFontAttributeName: [UIFont boldSystemFontOfSize:18.0] }];
            [mutMessage appendAttributedString:message];
        }
    }
    
    [self.resultsTextView setAttributedText:mutMessage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
