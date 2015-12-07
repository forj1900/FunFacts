//
//  ViewController.h
//  FunFacts
//
//  Created by Sergey Zhuchkov on 15.11.15.
//  Copyright © 2015 Sergey Zhuchkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *funFuctLabel;
@property (strong, nonatomic) NSArray *facts;

//for my tests
@property (weak, nonatomic) IBOutlet UILabel *forTest;

@end

