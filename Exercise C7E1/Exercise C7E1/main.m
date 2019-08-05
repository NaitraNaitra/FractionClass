

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        Fraction *sum;
        [aFraction setTo:1 over:64];
        [bFraction setTo:1 over:2];
        
        sum = [aFraction divide:bFraction];
        sum.print;
        
        
    }
    return 0;
}
