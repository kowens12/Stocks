//
//  main.m
//  Stocks
//
//  Created by Katherine Owens on 5/3/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHoldings.h"
#import "BNRStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];

        
        BNRStockHolding *firstStock = [[BNRStockHolding alloc] init];
        BNRStockHolding *secondStock = [[BNRStockHolding alloc] init];
        BNRStockHolding *thirdStock = [[BNRStockHolding alloc] init];
        
        BNRForeignStockHoldings *firstForeignStock = [[BNRForeignStockHoldings alloc] init];
        BNRForeignStockHoldings *secondForeignStock = [[BNRForeignStockHoldings alloc] init];
        BNRForeignStockHoldings *thirdForeignStock = [[BNRForeignStockHoldings alloc] init];
        
        
        [firstStock setValueInDollars:4.50];
        [firstStock setCostInDollars:2.30];
        [firstStock setNumberOfShares:40];
        [firstStock setStockSymbol:@"abc"];
        
        [secondStock setValueInDollars:10.56];
        [secondStock setCostInDollars:12.19];
        [secondStock setNumberOfShares:90];
        [secondStock setStockSymbol:@"erf"];
        
        [thirdStock setValueInDollars:49.51];
        [thirdStock setCostInDollars:45.10];
        [thirdStock setNumberOfShares:210];
        [thirdStock setStockSymbol:@"ejk"];
        
        [portfolio addHoldings:firstStock];
        [portfolio addHoldings:secondStock];
        [portfolio addHoldings:thirdStock];
        
        firstForeignStock.conversionRate = 0.94;
        [firstForeignStock setValueInDollars:2.30];
        [firstForeignStock setCostInDollars:4.50];
        [firstForeignStock setNumberOfShares:40];
        
        secondForeignStock.conversionRate = 0.84;
        [secondForeignStock setValueInDollars:4.30];
        [secondForeignStock setCostInDollars:2.30];
        [secondForeignStock setNumberOfShares:20];
        
        thirdForeignStock.conversionRate = 0.93;
        [thirdForeignStock setValueInDollars:2.30];
        [thirdForeignStock setCostInDollars:2.10];
        [thirdForeignStock setNumberOfShares:43];
        
        
        for (int i = 0; i < portfolio.holdings.count; i++) {
            NSLog(@"Portfolio: \n Stocks: %@ is valued at %f, %@ is valued at %f, %@ is valued at %f \n Foreign Stocks: %@ is valued at %f, %@ is valued at %f, %@ is valued at %f ", firstStock.stockSymbol, [firstStock valueInDollars], secondStock.stockSymbol, [secondStock valueInDollars], thirdStock.stockSymbol, [thirdStock valueInDollars], firstForeignStock.stockSymbol, [firstForeignStock valueInDollars], secondForeignStock.stockSymbol, [secondForeignStock valueInDollars], thirdForeignStock.stockSymbol, [thirdForeignStock valueInDollars]);
        }
        


   }
    return 0;
}
