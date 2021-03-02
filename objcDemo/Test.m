//
//  Test.m
//  objcDemo
//
//  Created by Zhiwei Yu on 3/2/21.
//

#import <Foundation/Foundation.h>
#import "Test.h"

@implementation Test

- (void) areaOfCircle: (double) radius {
    NSLog(@"%f", 3.14 * radius * radius);
}

- (void) areaOfRectangle: (double) base height: (double) height {
    NSLog(@"%f", 0.5 * base * height);
}

- (void) areaOfSquare: (double) side {
    NSLog(@"%f", side * side);
}

- (void) simpleInterest: (double) p r: (double) r t: (double) t {
    NSLog(@"%f", p * r * t / 100);
}

@end
