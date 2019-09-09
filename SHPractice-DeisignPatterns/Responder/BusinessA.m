//
//  BusinessA.m
//  SHPractice-DeisignPatterns
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import "BusinessA.h"

@implementation BusinessA
- (void)handleBusiness:(CompletionBlock)completion{
    NSLog(@"%@不响应该业务",NSStringFromClass([self class]));
    if(completion){
        completion(NO);
    }
}
@end
