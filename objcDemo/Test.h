//
//  Test.h
//  objcDemo
//
//  Created by Zhiwei Yu on 3/2/21.
//

#ifndef Test_h
#define Test_h

@interface Test: NSObject

@property NSString* name;

- (void) areaOfCircle: (double) radius;
- (void) areaOfRectangle: (double) base height: (double) height;
- (void) areaOfSquare: (double) side;
- (void) simpleInterest: (double) p r: (double) r t: (double) t;

@end

#endif /* Test_h */
