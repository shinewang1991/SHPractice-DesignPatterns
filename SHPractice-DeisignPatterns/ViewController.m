//
//  ViewController.m
//  SHPractice-DeisignPatterns
//
//  Created by Shine on 2019/9/9.
//  Copyright © 2019 shine. All rights reserved.
//

#import "ViewController.h"

#import "BusinessA.h"
#import "BusinessB.h"
#import "BusinessC.h"

#import "ObjectA1.h"
#import "ObjectA2.h"
#import "ObjectB1.h"
#import "ObjectB2.h"

#import "TargetObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self responderDemo];
    
//    [self bridgeDemo];
    
    [self adapterDemo];
}

//责任链模式
- (void)responderDemo{
    
    //最初需求A->B->C
    /*
    BusinessA *A = [BusinessA new];
    BusinessB *B = [BusinessB new];
    BusinessC *C = [BusinessC new];
    A.nextBusiness = B;
    B.nextBusiness = C;
    C.nextBusiness = nil;
    
    [A handle:^(BusinessObject *handler, BOOL handled) {
        NSLog(@"所有业务执行结束....");
    }];
     */
    
    
    //需求变更C->A->B
    BusinessA *A = [BusinessA new];
    BusinessB *B = [BusinessB new];
    BusinessC *C = [BusinessC new];
    C.nextBusiness = A;
    A.nextBusiness = B;
    B.nextBusiness = nil;
    
    [C handle:^(BusinessObject *handler, BOOL handled) {
        NSLog(@"所有业务执行结束....");
    }];
    
    
    //如果某个业务不执行，可以继续由下一个响应者继续执行
    
}

- (void)bridgeDemo{
    /*
     A1 - B1、B2、B3
     A2 - B1、B2、B3
     A3 - B1、B2、B3
     */
    
    //创建一个具体的classA
    BaseObjectA *objectA = [ObjectA2 new];
    
    //创建一个具体的classB
    BaseObjectB *objectB = [ObjectB2 new];
    objectA.objB = objectB;
    [objectA handle];
}

- (void)adapterDemo{
    TargetObject *targetObject = [TargetObject new];
    [targetObject request];
}


@end
