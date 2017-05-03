//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Katherine Owens on 5/3/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)costInDollars;
- (float)valueInDollars;
- (int)numberOfShares;
- (void)setCostInDollars:(float)c;
- (void)setValueInDollars:(float)v;
- (void)setNumberOfShares:(int)n;

@end
