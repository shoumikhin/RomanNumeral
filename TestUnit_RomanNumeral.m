//
//  TestUnit_RomanNumeral.m
//  TestUnit_RomanNumeral
//
//  Created by Anthony Shoumikhin on 2014-15-01.
//  Copyright (c) 2014 Anthony Shoumikhin. All rights reserved.
//

SPEC_BEGIN(TestUnit_RomanNumeral)

describe(NSStringFromClass(NSNumber.class),
^
{
//==============================================================================
    context(@"conversions",
    ^
    {
//------------------------------------------------------------------------------
        it(@"should convert integers to roman numerals",
        ^
        {
            [[(@0).romanNumeralStringValue should] equal:@""];
            [[(@1).romanNumeralStringValue should] equal:@"I"];
            [[(@2).romanNumeralStringValue should] equal:@"II"];
            [[(@3).romanNumeralStringValue should] equal:@"III"];
            [[(@4).romanNumeralStringValue should] equal:@"IV"];
            [[(@5).romanNumeralStringValue should] equal:@"V"];
            [[(@6).romanNumeralStringValue should] equal:@"VI"];
            [[(@7).romanNumeralStringValue should] equal:@"VII"];
            [[(@8).romanNumeralStringValue should] equal:@"VIII"];
            [[(@9).romanNumeralStringValue should] equal:@"IX"];
            [[(@10).romanNumeralStringValue should] equal:@"X"];
            [[(@11).romanNumeralStringValue should] equal:@"XI"];
            [[(@14).romanNumeralStringValue should] equal:@"XIV"];
            [[(@15).romanNumeralStringValue should] equal:@"XV"];
            [[(@18).romanNumeralStringValue should] equal:@"XVIII"];
            [[(@19).romanNumeralStringValue should] equal:@"XIX"];
            [[(@20).romanNumeralStringValue should] equal:@"XX"];
            [[(@23).romanNumeralStringValue should] equal:@"XXIII"];
            [[(@29).romanNumeralStringValue should] equal:@"XXIX"];
            [[(@39).romanNumeralStringValue should] equal:@"XXXIX"];
            [[(@45).romanNumeralStringValue should] equal:@"XLV"];
            [[(@49).romanNumeralStringValue should] equal:@"XLIX"];
            [[(@50).romanNumeralStringValue should] equal:@"L"];
            [[(@53).romanNumeralStringValue should] equal:@"LIII"];
            [[(@54).romanNumeralStringValue should] equal:@"LIV"];
            [[(@59).romanNumeralStringValue should] equal:@"LIX"];
            [[(@78).romanNumeralStringValue should] equal:@"LXXVIII"];
            [[(@99).romanNumeralStringValue should] equal:@"XCIX"];
            [[(@100).romanNumeralStringValue should] equal:@"C"];
            [[(@145).romanNumeralStringValue should] equal:@"CXLV"];
            [[(@156).romanNumeralStringValue should] equal:@"CLVI"];
            [[(@288).romanNumeralStringValue should] equal:@"CCLXXXVIII"];
            [[(@321).romanNumeralStringValue should] equal:@"CCCXXI"];
            [[(@488).romanNumeralStringValue should] equal:@"CDLXXXVIII"];
            [[(@499).romanNumeralStringValue should] equal:@"CDXCIX"];
            [[(@500).romanNumeralStringValue should] equal:@"D"];
            [[(@543).romanNumeralStringValue should] equal:@"DXLIII"];
            [[(@888).romanNumeralStringValue should] equal:@"DCCCLXXXVIII"];
            [[(@899).romanNumeralStringValue should] equal:@"DCCCXCIX"];
            [[(@900).romanNumeralStringValue should] equal:@"CM"];
            [[(@909).romanNumeralStringValue should] equal:@"CMIX"];
            [[(@943).romanNumeralStringValue should] equal:@"CMXLIII"];
            [[(@999).romanNumeralStringValue should] equal:@"CMXCIX"];
            [[(@1000).romanNumeralStringValue should] equal:@"M"];
            [[(@1101).romanNumeralStringValue should] equal:@"MCI"];
            [[(@1301).romanNumeralStringValue should] equal:@"MCCCI"];
            [[(@1997).romanNumeralStringValue should] equal:@"MCMXCVII"];
            [[(@1999).romanNumeralStringValue should] equal:@"MCMXCIX"];
            [[(@2004).romanNumeralStringValue should] equal:@"MMIV"];
            [[(@2014).romanNumeralStringValue should] equal:@"MMXIV"];
            [[(@2555).romanNumeralStringValue should] equal:@"MMDLV"];
            [[(@3333).romanNumeralStringValue should] equal:@"MMMCCCXXXIII"];
            [[(@3999).romanNumeralStringValue should] equal:@"MMMCMXCIX"];
            [[(@4000).romanNumeralStringValue should] equal:@""];
        });
//------------------------------------------------------------------------------
    });
//==============================================================================
});

describe(NSStringFromClass(NSString.class),
^
{
//==============================================================================
    context(@"conversions",
    ^
    {
//------------------------------------------------------------------------------
        it(@"should convert roman numerals to integers",
        ^
        {
            [[@(@"".romanNumeralValue) should] equal:@0];
            [[@(@"I".romanNumeralValue) should] equal:@1];
            [[@(@"II".romanNumeralValue) should] equal:@2];
            [[@(@"III".romanNumeralValue) should] equal:@3];
            [[@(@"IV".romanNumeralValue) should] equal:@4];
            [[@(@"V".romanNumeralValue) should] equal:@5];
            [[@(@"VI".romanNumeralValue) should] equal:@6];
            [[@(@"VII".romanNumeralValue) should] equal:@7];
            [[@(@"VIII".romanNumeralValue) should] equal:@8];
            [[@(@"IX".romanNumeralValue) should] equal:@9];
            [[@(@"X".romanNumeralValue) should] equal:@10];
            [[@(@"XI".romanNumeralValue) should] equal:@11];
            [[@(@"XIV".romanNumeralValue) should] equal:@14];
            [[@(@"XV".romanNumeralValue) should] equal:@15];
            [[@(@"XVIII".romanNumeralValue) should] equal:@18];
            [[@(@"XIX".romanNumeralValue) should] equal:@19];
            [[@(@"XX".romanNumeralValue) should] equal:@20];
            [[@(@"XXIII".romanNumeralValue) should] equal:@23];
            [[@(@"XXIX".romanNumeralValue) should] equal:@29];
            [[@(@"XXXIX".romanNumeralValue) should] equal:@39];
            [[@(@"XLV".romanNumeralValue) should] equal:@45];
            [[@(@"XLIX".romanNumeralValue) should] equal:@49];
            [[@(@"L".romanNumeralValue) should] equal:@50];
            [[@(@"LIII".romanNumeralValue) should] equal:@53];
            [[@(@"LIV".romanNumeralValue) should] equal:@54];
            [[@(@"LIX".romanNumeralValue) should] equal:@59];
            [[@(@"LXXVIII".romanNumeralValue) should] equal:@78];
            [[@(@"XCIX".romanNumeralValue) should] equal:@99];
            [[@(@"C".romanNumeralValue) should] equal:@100];
            [[@(@"CXLV".romanNumeralValue) should] equal:@145];
            [[@(@"CLVI".romanNumeralValue) should] equal:@156];
            [[@(@"CCLXXXVIII".romanNumeralValue) should] equal:@288];
            [[@(@"CCCXXI".romanNumeralValue) should] equal:@321];
            [[@(@"CDLXXXVIII".romanNumeralValue) should] equal:@488];
            [[@(@"CDXCIX".romanNumeralValue) should] equal:@499];
            [[@(@"D".romanNumeralValue) should] equal:@500];
            [[@(@"DXLIII".romanNumeralValue) should] equal:@543];
            [[@(@"DCCCLXXXVIII".romanNumeralValue) should] equal:@888];
            [[@(@"DCCCXCIX".romanNumeralValue) should] equal:@899];
            [[@(@"CM".romanNumeralValue) should] equal:@900];
            [[@(@"CMIX".romanNumeralValue) should] equal:@909];
            [[@(@"CMXLIII".romanNumeralValue) should] equal:@943];
            [[@(@"CMXCIX".romanNumeralValue) should] equal:@999];
            [[@(@"M".romanNumeralValue) should] equal:@1000];
            [[@(@"MCI".romanNumeralValue) should] equal:@1101];
            [[@(@"MCCCI".romanNumeralValue) should] equal:@1301];
            [[@(@"MCMXCVII".romanNumeralValue) should] equal:@1997];
            [[@(@"MCMXCIX".romanNumeralValue) should] equal:@1999];
            [[@(@"MMIV".romanNumeralValue) should] equal:@2004];
            [[@(@"MMXIV".romanNumeralValue) should] equal:@2014];
            [[@(@"MMDLV".romanNumeralValue) should] equal:@2555];
            [[@(@"MMMCCCXXXIII".romanNumeralValue) should] equal:@3333];
            [[@(@"MMMCMXCIX".romanNumeralValue) should] equal:@3999];
        });
//------------------------------------------------------------------------------
    });
//==============================================================================
});

SPEC_END