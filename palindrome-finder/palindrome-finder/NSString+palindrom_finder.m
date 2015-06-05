//
//  NSString+palindrom_finder.m
//  palindrome-finder
//
//  Created by Gan Chau on 6/5/15.
//  Copyright (c) 2015 Gantastic App. All rights reserved.
//

#import "NSString+palindrom_finder.h"

@implementation NSString (palindrom_finder)

- (BOOL)palindromFinder
{
    NSMutableArray *lettersOfString = [@[] mutableCopy];
                                       
    for (NSUInteger i = 0; i < self.length; i++) {
        NSRange range = NSMakeRange(i, 1);
        NSString *letter = [self substringWithRange:range];
        [lettersOfString addObject:letter];
    }
    
    NSArray *reversedLettersOfString = [lettersOfString reverseObjectEnumerator].allObjects;
    NSString *reversedString = [reversedLettersOfString componentsJoinedByString:@""];
    
    if ([[reversedString lowercaseString] isEqualToString:[self lowercaseString]]) {
        return YES;
    }
    
    return NO;

}

@end
