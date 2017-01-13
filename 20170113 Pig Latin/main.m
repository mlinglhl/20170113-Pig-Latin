//
//  main.m
//  20170113 Pig Latin
//
//  Created by Minhung Ling on 2017-01-13.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Utils.h"

int main(int argc, const char * argv[]) {
    NSArray *stringHolder = [NSArray new];
    NSString *inputString = [NSString stringWithFormat:@"cash carrot apple minecraft sign language subspace"];
    stringHolder = [inputString componentsSeparatedByString:@" "];
    for (NSString *word in stringHolder) {
        NSString *pigLatinString = [word stringByPigLatinization];
        NSLog(@"%@", pigLatinString);
    }    
    return 0;
}
