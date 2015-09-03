//
//  FISAppDelegate.m
//  Objc-deli
//
//  Created by Al Tyus on 2/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}




// #3
- (NSString *)stringWithDeliLine:(NSArray *)deliLine{
    
    NSMutableString *deliMutableString = [[NSMutableString alloc] initWithFormat:@"The line is:"];
    
    if ([deliLine count] == 0) {
        return @"The line is currently empty.";
    } else {
        
    for (NSUInteger i = 0; i < [deliLine count]; i++) {
        NSString *customers = [NSString stringWithFormat:@"\n%lu. %@", i+1, deliLine[i]];
        [deliMutableString appendString:customers];
    }
        return deliMutableString;
    }
}




// #4
- (void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    
    [deliLine addObject:name]; //addObject is a void- method, no capture necessary
}




// #5 
- (NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    NSString *firstName = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    
    return firstName;
}


@end
