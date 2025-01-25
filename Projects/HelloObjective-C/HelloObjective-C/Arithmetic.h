//
//  Arithmetic.h
//  HelloObjective-C
//
//  Created by Nimesh Neema on 22/01/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

    // Arithmetic class interface
@interface Arithmetic : NSObject

    // Instance methods
- (int)sumOfNumber:(int)firstNumber
  withSecondNumber:(int)secondNumber
    andThirdNumber:(int)thirdNumber;

- (int)productOfNumber:(int)firstNumber
      withSecondNumber:(int)secondNumber
        andThirdNumber:(int)thirdNumber;

@end

NS_ASSUME_NONNULL_END
