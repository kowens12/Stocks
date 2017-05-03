//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Katherine Owens on 5/3/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (void)setCostInDollars:(float)c {
   _purchaseSharePrice = c;
}

- (void)setValueInDollars:(float)v {
   _currentSharePrice = v;
}

- (void)setNumberOfShares:(int)n {
    _numberOfShares = n;
}

- (float)valueInDollars {
    return  _currentSharePrice * self.numberOfShares;
}

- (float)costInDollars {
    return _purchaseSharePrice * self.numberOfShares;
}

- (int)numberOfShares {
    return _numberOfShares;
}

@end
