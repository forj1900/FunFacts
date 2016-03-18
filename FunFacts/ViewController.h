//
//  ViewController.h
//  FunFacts
//
//  Created by Sergey Zhuchkov on 15.11.15.
//  Copyright © 2015 Sergey Zhuchkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FactBook;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *funFuctLabel;
@property (strong, nonatomic) FactBook *factBook;
@property (weak, nonatomic) IBOutlet UIButton *funFactButton;



@end

