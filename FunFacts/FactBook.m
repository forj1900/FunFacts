//
//  FactBook.m
//  FunFacts
//
//  Created by Sergey Zhuchkov on 16.11.15.
//  Copyright © 2015 Sergey Zhuchkov. All rights reserved.
//

#import "FactBook.h"

@implementation FactBook

- (instancetype)init
{
    self = [super init];
    if (self) {
        _facts = [[NSArray alloc] initWithObjects:
                  @"Кот ложится на диван исключительно поперёк. Куплю круглый диван и пусть у этого заразы будет нервный срыв.",
                  @"Я не хочу сказать, что погода дрянь, но под моим окном какой-то бородатый мужик строит большой корабль.",
                  @"А все-таки особое кощунство - называть систему, сделанную для взымания денежных средств, именем философа-бессеребренника...",
                  @"Николай Валуев перепутал военкомат с банкоматом, но деньги всё равно снял.",
                  nil];
        _quantityOfFacts = _facts.count;
        _numberOfCurrentFact = 0;
        _currentPositionOfChar = 0;
    }
    return self;
}

- (NSString *) newFact {
    _numberOfCurrentFact++;
    if (_numberOfCurrentFact == _quantityOfFacts)
        _numberOfCurrentFact = 0;
    _sizeOfCurrenFact = sizeof([_facts objectAtIndex: _numberOfCurrentFact]);
    return [_facts objectAtIndex:_numberOfCurrentFact];
}

- (NSString *) newCharFromFact {
    char currentChar = [[_facts objectAtIndex:_numberOfCurrentFact] characterAtIndex: _currentPositionOfChar];
    _currentPositionOfChar++;
    if (_currentPositionOfChar < _sizeOfCurrenFact){
        _currentPositionOfChar = 0;
    }
    return [NSString stringWithFormat:@"%c", currentChar];
}

@end

