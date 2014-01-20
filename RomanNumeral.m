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
- (NSString *)encodeRomanDigit:(NSInteger)value withBase:(NSUInteger)base
{
    NSString *one = @"";
    NSString *five = @"";
    NSString *ten = @"";

    switch (base)
    {
        case 1 :

            one = @"I";
            five = @"V";
            ten = @"X";

            break;

        case 10 :

            one = @"X";
            five = @"L";
            ten = @"C";

            break;


        case 100 :

            one = @"C";
            five = @"D";
            ten = @"M";

            break;

        case 1000 :

            one = @"M";

            break;
    }

    return [self encodeRomanDigit:value one:one five:five ten:ten];
}
//------------------------------------------------------------------------------
- (NSString *)romanNumeralStringValue
{
    NSMutableString *ret = @"".mutableCopy;
    NSUInteger value = self.unsignedIntegerValue;
    NSUInteger const ROMAN_NUMBER_MAX = 3999;

    if (value > ROMAN_NUMBER_MAX)
        return ret;

    NSUInteger base = 10;
    NSUInteger currentBase = 1;

    do
    {
        [ret insertString:[self encodeRomanDigit:value % base withBase:currentBase] atIndex:0];
        currentBase *= base;
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

    for(int i = 0; i < length; ++i)
    {
        NSInteger current = [self decodeRomanDigit:buffer[i]];
        NSInteger next = i + 1 < length ? [self decodeRomanDigit:buffer[i + 1]] : 0;

        if (next > current)
        {
            ret += next - current;
            ++i;
        }
        else
            ret += current;
    }

    return ret;
}
//------------------------------------------------------------------------------
@end
//==============================================================================
