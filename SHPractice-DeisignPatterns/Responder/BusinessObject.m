//
//  BusinessObject.m
//  SHPractice-DeisignPatterns
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import "BusinessObject.h"

@implementation BusinessObject

- (void)handle:(ResultBlock)result{
    CompletionBlock completion = ^(BOOL handled){
        if(handled){
            if(self.nextBusiness){
                [self.nextBusiness handle:result];
            }
            else{
                result(self,handled);
            }
        }
        else{  //沿着责任链指派给下一个业务处理
            if(self.nextBusiness){
                [self.nextBusiness handle:result];
            }
            else{
                //没有业务处理，上抛
                result(nil,NO);
            }
        }
        
    };
    
    [self handleBusiness:completion];
}


- (void)handleBusiness:(CompletionBlock)completion{
    //override subclass
}
@end
