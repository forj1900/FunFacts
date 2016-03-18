//
//  FactBook.h
//  FunFacts
//
//  Created by Sergey Zhuchkov on 16.11.15.
//  Copyright © 2015 Sergey Zhuchkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactBook : NSObject

@property (strong, nonatomic) NSArray *facts;
@property unsigned long quantityOfFacts;

@property int numberOfCurrentFact;
@property char currentCharInFact;
@property int currentPositionOfChar;
@property int sizeOfCurrenFact;

- (NSString *) newFact;
- (NSString *) nextCharFromFact;

@end
