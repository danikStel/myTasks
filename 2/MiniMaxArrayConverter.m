#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {

NSMutableArray<NSNumber *> *newArray = [[NSMutableArray alloc] initWithArray:array];
    NSSortDescriptor *sorting = [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES];
[newArray sortUsingDescriptors:[NSArray arrayWithObject:sorting]];
    NSNumber *max = [[NSNumber alloc] initWithInt: 0];
    NSNumber *min = [[NSNumber alloc] initWithInt: 0];
for (int i = 0 ; i < [newArray count]; i++) {
    if (i == 0 ) {
        min = [NSNumber numberWithInt:([min intValue] + [newArray[i] intValue])];continue;
    }
    if (i == [newArray count] - 1) {
        max = [NSNumber numberWithInt:([max intValue] + [newArray[i] intValue])];continue;
    }
   min = [NSNumber numberWithInt:([min intValue] + [newArray[i] intValue])];
   max = [NSNumber numberWithInt:([max intValue] + [newArray[i] intValue])];
    NSLog(@"%@",min);
    NSLog(@"%@",max);
}
return @[min,max];
}

@end
