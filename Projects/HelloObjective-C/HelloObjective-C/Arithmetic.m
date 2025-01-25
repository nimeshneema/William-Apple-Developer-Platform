//
//  Arithmetic.m
//  HelloObjective-C
//
//  Created by Nimesh Neema on 22/01/25.
//

#import "Arithmetic.h"

// Arithmetic class implementation
@implementation Arithmetic

- (int)sumOfNumber:(int)firstNumber
  withSecondNumber:(int)secondNumber
    andThirdNumber:(int)thirdNumber {
    return firstNumber + secondNumber + thirdNumber;
}

- (int)productOfNumber:(int)firstNumber
      withSecondNumber:(int)secondNumber
        andThirdNumber:(int)thirdNumber {
    return firstNumber * secondNumber * thirdNumber;
}

@end
