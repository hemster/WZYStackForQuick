//
//  WZYStack.h
//  WZYStackForQuick
//
//  Created by Zeyu Wei on 5/24/16.
//  Copyright © 2016 Hemster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WZYStack : NSObject
//@property (nonatomic, strong, nullable) NSMutableArray *numbers;

- (double)top;
- (double)pop;
- (NSUInteger)count;
- (void)push:(double)number;

@end
