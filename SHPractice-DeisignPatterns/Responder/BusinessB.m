//
//  BusinessB.m
//  SHPractice-DeisignPatterns
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import "BusinessB.h"

@implementation BusinessB
- (void)handleBusiness:(CompletionBlock)completion{
    NSLog(@"%@完成了业务逻辑",NSStringFromClass([self class]));
    if(completion){
        completion(YES);
    }
}
@end
