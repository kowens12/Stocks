//
//  BNRForeignStockHoldings.m
//  Stocks
//
//  Created by Katherine Owens on 5/4/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import "BNRForeignStockHoldings.h"


@implementation BNRForeignStockHoldings

- (float)costInDollars {
    float cost = [super costInDollars];
    return cost * self.conversionRate;
}

- (float)valueInDollars {
    float value = [super valueInDollars];
    return value * self.conversionRate;
}
@end
