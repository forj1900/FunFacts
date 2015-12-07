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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.facts = [[NSArray alloc] initWithObjects:
                  @"First fact",
                  @"Second object",
                  @"Third object",
                  @"Etc",
                  nil];
    self.funFuctLabel.text = [self.facts objectAtIndex:0];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showFunFact {
    
    
    self.funFuctLabel.text = [self.facts objectAtIndex:1];
    
    self.forTest.text = @"just for test";
/*
    for (int i = 0; i<10; i++){
        self.forTest.text = ;
    } */

}

@end
