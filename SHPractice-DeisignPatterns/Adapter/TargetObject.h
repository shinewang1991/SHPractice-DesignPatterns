//
//  TargetObject.h
//  SHPractice-DeisignPatterns
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"

@interface TargetObject : NSObject
@property (nonatomic, strong) Target *target;

- (void)request;
@end
