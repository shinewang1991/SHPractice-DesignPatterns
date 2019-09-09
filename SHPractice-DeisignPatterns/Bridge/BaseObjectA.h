//
//  BaseObjectA.h
//  SHPractice-DeisignPatterns
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseObjectB.h"

@interface BaseObjectA : NSObject
@property (nonatomic, strong) BaseObjectB *objB;
- (void)handle;
@end
