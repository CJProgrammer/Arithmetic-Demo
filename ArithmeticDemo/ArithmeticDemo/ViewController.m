//
//  ViewController.m
//  ArithmeticDemo
//
//  Created by CJ on 2017/11/2.
//  Copyright © 2017年 CJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 打印2-100之间的素数。素数/质数：定义为在大于1的自然数中，除了1和它本身以外不再有其他因数。
    for (int i = 2; i < 100; i++) {
        if ([self isPrime:i]) {
            NSLog(@"%d", i);
        }
    }
    
    // 求两个整数的最大公约数。
    int gcd = [self gcdWith:31 and:22];
    NSLog(@"gcd = %d",gcd);
}

- (BOOL)isPrime:(int)n {
    
    for (int i = 2; i <= sqrt(n); i++) {
        if (n % i == 0) {
            return NO;
        }
    }
    return YES;
}

// greatest common divisor
- (int)gcdWith:(int)a and:(int)b {
    
    int temp = 0;
    
    if (a < b) {
        temp = a;
        a = b;
        b = temp;
    }
    
    for(int i = b; i >= 1; i--) {
        if (a % i == 0 && b % i == 0) {
            return i;
            break;
        }
    }
    
    return 1;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
