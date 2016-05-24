//
//  WZYStackSpec.m
//  WZYStackForQuick
//
//  Created by Zeyu Wei on 5/24/16.
//  Copyright © 2016 Hemster. All rights reserved.
//

@import Quick;
@import Nimble;

#import "WZYStack.h"

QuickSpecBegin(WZYStackSpec)


describe(@"WZYStack", ^{
     __block WZYStack *stack = nil;
    
//    beforeEachWithMetadata(^(ExampleMetadata *exampleMetadata){
//        NSLog(@"Example number %l is about to be run.", (long)exampleMetadata.exampleIndex);
//    });
//    
//    afterEachWithMetadata(^(ExampleMetadata *exampleMetadata){
//        NSLog(@"Example number %l has run.", (long)exampleMetadata.exampleIndex);
//    });
//
    
    context(@"when new created", ^{
        beforeEach(^{
            stack = [WZYStack new];
        });
        
        afterEach(^{
            stack = nil;
        });
        
        it(@"should have the class WZYStack", ^{
            expect([WZYStack class]).notTo(beNil());
        });

        it(@"should exist", ^{
            expect(stack).notTo(beNil());
        });

        it(@"should be able to push and get top", ^{
            [stack push:2.3];
            expect(@([stack top])).to(equal(@(2.3)));
        });
        
        it(@"should equal contains 0 element", ^{
            expect(@([stack count])).to(equal(@0));
        });

        // Exception test not working
        it(@"should raise a exception when pop", ^{
            expect(@([stack pop])).to(raiseException().named(@"WZYStackEmptyException"));
        });
    });
    
    context(@"when new created and pushed 4.6", ^{
        beforeEach(^{
            stack = [WZYStack new];
            [stack push:4.6];
        });

        afterEach(^{
            stack = nil;
        });

        it(@"can be poped and the value equals 4.6", ^{
            expect(@([stack pop])).to(equal(@4.6));
        });

        it(@"should contains 0 element after pop", ^{
            [stack pop];
            expect(stack).to(haveCount(0));
        });
    });
});

QuickSpecEnd
