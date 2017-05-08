//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Katherine Owens on 5/8/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
@class BNRStockHolding;
@interface BNRPortfolio : NSObject
{
    NSMutableArray *_holdings;
}
@property (nonatomic) unsigned int value;
@property (nonatomic, copy)NSArray *holdings;

- (void)addHoldings:(BNRStockHolding *)holdings;


@end
