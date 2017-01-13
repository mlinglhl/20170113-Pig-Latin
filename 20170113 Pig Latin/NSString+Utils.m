//
//  NSString+Utils.m
//  20170113 Pig Latin
//
//  Created by Minhung Ling on 2017-01-13.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

- (NSString *)stringByPigLatinization {
    NSMutableArray *breakMeUp = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.length; i++) {
        [breakMeUp addObject:[self substringWithRange: NSMakeRange(i, 1)]];
    }
    NSString *vowels = @"aeiou";
    BOOL foundVowel = NO;
    NSMutableString *beginning = [[NSMutableString alloc] init];
    NSMutableString *end = [[NSMutableString alloc] init];
    for (NSString *letter in breakMeUp) {
        if (foundVowel == NO) {
            if (![vowels containsString:letter]){
                [beginning appendString:letter];
            }
            else {
                [end appendString:letter];
                foundVowel = YES;
            }
        }
        else {
            [end appendString:letter];
        }
        
    }
    [end appendString:beginning];
    [end appendString:@"ay"];
    return end;
}

@end
