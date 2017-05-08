//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Katherine Owens on 5/3/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPortfolio.h"

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

//@property (nonatomic, copy)NSArray *holdings;
@property (nonatomic)NSString *stockSymbol;

- (float)costInDollars;
- (float)valueInDollars;
- (int)numberOfShares;
- (NSString *)stockSymbol;
- (void)setStockSymbol:(NSString *)stockSymbol;
- (void)setCostInDollars:(float)c;
- (void)setValueInDollars:(float)v;
- (void)setNumberOfShares:(int)n;
//- (void)addHoldings:(BNRStockHolding *)holdings;
//- (void)valueOfHoldings;

@end
