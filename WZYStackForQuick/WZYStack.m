//
//  WZYStack.m
//  WZYStackForQuick
//
//  Created by Zeyu Wei on 5/24/16.
//  Copyright © 2016 Hemster. All rights reserved.
//

#import "WZYStack.h"

@interface WZYStack ()

@property (nonatomic, strong, nullable) NSMutableArray *numbers;

@end

@implementation WZYStack
- (instancetype)init {
    self = [super init];
    if (self) {
        self.numbers = [NSMutableArray new];
    }
    
    return self;
}

- (void)push:(double)number {
    [self.numbers addObject:@(number)];
}

- (double)top {
    return [[self.numbers lastObject] doubleValue];
}

- (NSUInteger)count {
    return [self.numbers count];
}

- (double)pop {
    if ([self count] == 0) {
        [NSException raise:@"WZYStackEmptyException" format:@"Can not pop an empty stack."];
    }
    
    double result = [self top];
    [self.numbers removeLastObject];
    return result;
}

@end