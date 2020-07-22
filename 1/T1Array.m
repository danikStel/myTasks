#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
   NSMutableArray * mSadArray = [[NSMutableArray alloc] initWithArray:sadArray];
    if ([sadArray count] > 0){
    tryAgain:
        for (int i = 1 ; i <[mSadArray count]-1; i++){
          if ([[mSadArray objectAtIndex:i-1] intValue]+ [[mSadArray objectAtIndex:i+1] intValue] < [[mSadArray objectAtIndex:i] intValue]){
              [mSadArray removeObjectAtIndex:i];
             goto tryAgain;
          }
        }
        }
    return mSadArray;
}

@end

