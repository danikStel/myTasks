#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    NSNumber *mySum = [[NSNumber alloc] initWithInt:0];
    for (int i =0; i< [bill count]; i++){
        if (i!=index){
            mySum = [NSNumber numberWithInt:([mySum intValue]+ [bill[i] intValue])];
        }
    }
    if ([mySum intValue]/2 == [sum intValue]){
    return @"Bon Appetit";
    }
NSNumber *correctSum = [[NSNumber alloc] initWithInt:0];
correctSum = [NSNumber numberWithInt:([sum intValue] -[mySum intValue]/2)];
NSLog(@"%i", [correctSum intValue]);
return [correctSum stringValue];
}

@end
