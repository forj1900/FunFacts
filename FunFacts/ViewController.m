//
//  ViewController.m
//  FunFacts
//
//  Created by Sergey Zhuchkov on 15.11.15.
//  Copyright © 2015 Sergey Zhuchkov. All rights reserved.
//

#import "ViewController.h"
#include <Security/SecBase.h>
#import "FactBook.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.factBook = [[FactBook alloc] init];

    NSString *textOfFact = [self.factBook newFact];
    self.funFuctLabel.text = textOfFact;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showFunFact {
    NSString *textOfFact = [self.factBook newFact];
    self.funFuctLabel.text = textOfFact;
}

@end

/*
 // it will show fact char by char
 
 for (NSUInteger i = 0; i < sizeof(textOfFact)-1; i++){
 char currentChar = [textOfFact characterAtIndex:i];
 
 NSString *stringFromChar = [NSString stringWithFormat:@"%c", currentChar];
 self.funFuctLabel.text = [self.funFuctLabel.text stringByAppendingString:stringFromChar];
 }
 */

/*
 // make delay
 NSDate *future = [NSDate dateWithTimeIntervalSinceNow: 0.6 ];
 [NSThread sleepUntilDate:future];
 
 
 // end of delay
 */

