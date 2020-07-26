#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    if ([n intValue]%2!=0){
        return @"-1";
    }
    NSMutableArray *pol = [[NSMutableArray alloc] initWithCapacity:[s length]];
    for (int i=0; i < [s length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [s characterAtIndex:i]];
        [pol addObject:ichar];
    }
    int len = [n intValue];
    NSString *max = pol[0];
    for (int i = 0 ; i<len ;i++){
        if ([pol[i] intValue] > [max intValue]){
            max = pol[i];
        }
    }
    for (NSUInteger stPos=0, endPos=len-1; stPos < len/2; stPos++, endPos--) {
       if(pol[stPos]!=pol[endPos] && pol[stPos]!=max && pol[endPos]!=max){
            pol[stPos]=max;
            pol[endPos]=max;
            continue;
        }
        if (pol[stPos]==pol[endPos]){
         continue;
        }
      if ([pol[stPos] intValue]>[pol[endPos]intValue]){
          pol[endPos]= pol[stPos];
          continue;
        }
        if ([pol[stPos]intValue]<[pol[endPos]intValue] ){
            pol[stPos] = pol[endPos];
            continue;
        }
    }
    NSString * result = [[pol valueForKey:@"description"] componentsJoinedByString:@""];
    NSLog(@"%@",result);
    return result;
}

@end
