//
//  BusinessObject.h
//  SHPractice-DeisignPatterns
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BusinessObject;
typedef void(^CompletionBlock)(BOOL handled);
typedef void(^ResultBlock)(BusinessObject *handler, BOOL handled);

@interface BusinessObject : NSObject
@property (nonatomic, strong) BusinessObject *nextBusiness;


- (void)handle:(ResultBlock)result;

//各个业务做实际业务处理
- (void)handleBusiness:(CompletionBlock)completion;
@end
