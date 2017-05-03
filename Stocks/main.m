//
//  main.m
//  Stocks
//
//  Created by Katherine Owens on 5/3/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRStockHolding *firstStock = [[BNRStockHolding alloc] init];
        BNRStockHolding *secondStock = [[BNRStockHolding alloc] init];
        BNRStockHolding *thirdStock = [[BNRStockHolding alloc] init];
        
        NSMutableArray *stockHoldings = [[NSMutableArray alloc] init];
        
        [firstStock setValueInDollars:4.50];
        [firstStock setCostInDollars:2.30];
        [firstStock setNumberOfShares:40];
        
        [secondStock setValueInDollars:10.56];
        [secondStock setCostInDollars:12.19];
        [secondStock setNumberOfShares:90];
        
        [thirdStock setValueInDollars:49.51];
        [thirdStock setCostInDollars:45.10];
        [thirdStock setNumberOfShares:210];
        
        
        [stockHoldings addObject:firstStock];
        [stockHoldings addObject:secondStock];
        [stockHoldings addObject:thirdStock];
        
        for (BNRStockHolding *stock in stockHoldings) {
            NSLog(@"First stock cost in dollars:%.2f, First stock value in dollars:%.2f, second stock cost in dollars: %.2f, second stock value in dollars: %.2f, third stock cost in dollars: %.2f, third stock value in dollars: %.2f", [firstStock costInDollars], [firstStock valueInDollars], [secondStock costInDollars], [secondStock valueInDollars], [thirdStock costInDollars], [thirdStock valueInDollars]);
        }
    }
    return 0;
}
