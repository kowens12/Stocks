//
//  BNRForeignStockHoldings.h
//  Stocks
//
//  Created by Katherine Owens on 5/4/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@class BNRPortfolio;

@interface BNRForeignStockHoldings : BNRStockHolding

@property (nonatomic) float conversionRate;

@end
