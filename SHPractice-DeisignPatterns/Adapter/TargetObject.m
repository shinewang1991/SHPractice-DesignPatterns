//
//  TargetObject.m
//  SHPractice-DeisignPatterns
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import "TargetObject.h"

@implementation TargetObject

- (instancetype)init{
    self = [super init];
    if(self){
        self.target = [Target new];
    }
    return self;
}
- (void)request{
    NSLog(@"增加新逻辑.....");
    [self.target operation];
}
@end
