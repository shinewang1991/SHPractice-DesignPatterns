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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self responderDemo];
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


@end
