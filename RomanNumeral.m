//
//  RomanNumeral.m
//
//  Created by Anthony Shoumikhin on 2014-16-01.
//  Copyright (c) 2014 Anthony Shoumikhin. All rights reserved.
//

#import "RomanNumeral.h"

//==============================================================================
@implementation NSNumber (RomanNumeral)
//------------------------------------------------------------------------------
- (NSString *)encodeRomanDigit:(NSInteger)value one:(NSString *)one five:(NSString *)five ten:(NSString *)ten
{
    switch (value)
    {
        case 1 :

            return [NSString stringWithFormat:@"%@", one];

        case 2 :

            return [NSString stringWithFormat:@"%@%@", one, one];

        case 3 :

            return [NSString stringWithFormat:@"%@%@%@", one, one, one];

        case 4 :

            return [NSString stringWithFormat:@"%@%@", one, five];

        case 5 :

            return [NSString stringWithFormat:@"%@", five];

        case 6 :

            return [NSString stringWithFormat:@"%@%@", five, one];

        case 7 :

            return [NSString stringWithFormat:@"%@%@%@", five, one, one];

        case 8 :

            return [NSString stringWithFormat:@"%@%@%@%@", five, one, one, one];
            
        case 9 :
            
            return [NSString stringWithFormat:@"%@%@", one, ten];
    }
    
    return @"";
}
//------------------------------------------------------------------------------
- (NSString *)encodeRomanDigit:(NSInteger)value withBase:(NSUInteger)digitPosition
{
    switch (digitPosition)
    {
        case 0 :

            return [self encodeRomanDigit:value one:@"I" five:@"V" ten:@"X"];

        case 1 :

            return [self encodeRomanDigit:value one:@"X" five:@"L" ten:@"C"];

        case 2 :

            return [self encodeRomanDigit:value one:@"C" five:@"D" ten:@"M"];
            
        case 3 :

            return [self encodeRomanDigit:value one:@"M" five:@"" ten:@""];
    }

    return @"";
}
//------------------------------------------------------------------------------
- (NSString *)romanNumeralStringValue
{
    NSMutableString *ret = @"".mutableCopy;
    NSUInteger value = self.unsignedIntegerValue;
    NSUInteger base = 10;
    NSUInteger digitPosition = 0;
    NSUInteger const ROMAN_NUMBER_MAX = 4000;

    if (value < ROMAN_NUMBER_MAX)
      do
      {
          [ret insertString:[self encodeRomanDigit:value % base withBase:digitPosition] atIndex:0];
          digitPosition++;
      }
      while (value /= base);

    return ret;
}
//------------------------------------------------------------------------------
@end
//==============================================================================
@implementation NSString (RomanNumeral)
//------------------------------------------------------------------------------
- (NSInteger)decodeRomanDigit:(char)romanDigit
{
    switch (romanDigit)
    {
        case 'I' :
        case 'i' :

            return 1;

        case 'V' :
        case 'v' :
        case 'U' :
        case 'u' :

            return 5;

        case 'X' :
        case 'x' :

            return 10;

        case 'L' :
        case 'l' :

            return 50;

        case 'C' :
        case 'c' :

            return 100;

        case 'D' :
        case 'd' :

            return 500;

        case 'M' :
        case 'm' :

            return 1000;
    }

    return 0;
}
//------------------------------------------------------------------------------
- (NSInteger)romanNumeralValue
{
    NSInteger ret = 0;
    NSUInteger length = self.length;
    unichar buffer[length];

    [self getCharacters:buffer range:NSMakeRange(0, length)];

    for (int i = 0; i < length; ++i)
    {
        NSInteger currentDigit = [self decodeRomanDigit:buffer[i]];
        NSInteger nextDigit = i + 1 < length ? [self decodeRomanDigit:buffer[i + 1]] : 0;

        if (nextDigit > currentDigit)
        {
            ret += nextDigit - currentDigit;
            i++;
        }
        else
            ret += currentDigit;
    }

    return ret;
}
//------------------------------------------------------------------------------
@end
//==============================================================================
