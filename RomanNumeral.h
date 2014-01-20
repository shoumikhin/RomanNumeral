//
//  RomanNumeral.h
//
//  Created by Anthony Shoumikhin on 2014-16-01.
//  Copyright (c) 2014 Anthony Shoumikhin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (RomanNumeral)

- (NSString *)romanNumeralStringValue;

@end

@interface NSString (RomanNumeral)

- (NSInteger)romanNumeralValue;

@end
