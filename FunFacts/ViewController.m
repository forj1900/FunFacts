//
//  ViewController.m
//  FunFacts
//
//  Created by Sergey Zhuchkov on 15.11.15.
//  Copyright © 2015 Sergey Zhuchkov. All rights reserved.
//

#import "ViewController.h"
#include <Security/SecBase.h>

@interface ViewController ()

@end

@implementation ViewController
int currentFact = 0;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.facts = [[NSArray alloc] initWithObjects:
                  @"First fact",
                  @"Second object",
                  @"Third object",
                  @"Etc",
                  nil];
    self.funFuctLabel.text = [self.facts objectAtIndex:currentFact];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showFunFact {
    
    if (currentFact == sizeof(self.facts)) currentFact = 0;
    self.funFuctLabel.text = [self.facts objectAtIndex: currentFact++];
    
    NSUInteger i = 1;
    
    NSString *s = @"test";
    int yourintvalue = 10;
    
    NSString *strFromInt = [NSString stringWithFormat:@"%d",yourintvalue];
    
    char c = [s characterAtIndex:i];
    
    char myChar = 'r';
    NSString* string = [NSString stringWithFormat:@"%c" , c];
    
    self.funFuctLabel.text = string ;


}

@end
