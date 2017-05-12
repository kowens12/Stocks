//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Katherine Owens on 5/8/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio()
{
    NSMutableArray *_holdings;
}

@end

@implementation BNRPortfolio

- (void)setHoldings:(NSArray *)h {
    _holdings = [h mutableCopy];
}

- (NSArray *)holdings {
    return [_holdings copy];
}

- (void)addHoldings:(BNRStockHolding *)h {
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    
    [_holdings addObject:h];
}

- (void)removeHoldings:(BNRStockHolding *)holdings {
    if (self.holdings.count < 1) {
        NSLog(@"There are no holdings in portfolio");
    }
        [_holdings removeObject:holdings];
    }

@end
