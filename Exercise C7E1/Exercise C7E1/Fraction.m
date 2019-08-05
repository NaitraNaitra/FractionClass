

#import "Fraction.h"

@implementation Fraction

@synthesize numerator,denominator;

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return 1.0;
}

-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

-(Fraction *) add: (Fraction *) f{
    Fraction *result = [[Fraction alloc]init];
    int resultNum, resultDenom;
    
    resultNum = numerator * f.denominator + denominator * f.numerator;
    resultDenom = denominator * f.denominator;
    
    [result setTo: resultNum over: resultDenom];
    [result reduce];
    return result;
    
}


-(Fraction *) subtract: (Fraction *) f{
    Fraction *result = [[Fraction alloc]init];
    int resultNum, resultDenom;
    
    resultNum = numerator * f.denominator - denominator * f.numerator;
    resultDenom = denominator * f.denominator;
    
    [result setTo: resultNum over: resultDenom];
    [result reduce];
    return result;
}

-(Fraction *) multiply: (Fraction *) f{
    Fraction *result = [[Fraction alloc]init];
    int resultNum, resultDenom;
    
    resultNum = numerator * f.numerator;
    resultDenom = denominator * f.denominator;
    
    [result setTo: resultNum over: resultDenom];
    [result reduce];
    return result;
}

-(Fraction *) divide: (Fraction *) f{
    Fraction *result = [[Fraction alloc]init];
    int resultNum, resultDenom;
    
    resultNum = numerator * f.denominator;
    
    
    resultDenom = denominator * f.numerator;
    
    [result setTo: resultNum over: resultDenom];
    [result reduce];
    return result;
}


-(void)reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v !=0){
        temp = u % v;
        u = v;
        v = temp;
        
    }
    numerator /= u;
    denominator /= u;
}
@end
