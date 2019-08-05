

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

@property int numerator, denominator;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(Fraction *) add: (Fraction *) f; //taking in Fraction CLASS WOOHOO show me the address of Fraction  and all its juicy innards..
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;

-(void) reduce;


@end

NS_ASSUME_NONNULL_END
