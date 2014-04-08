//
//  TKTestViewControllerTests.m
//  TKTestViewControllerTests
//
//  Created by Triệu Khang on 8/4/14.
//  Copyright (c) 2014 Triệu Khang. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import "TKViewController.h"
#import "Expecta.h"
#import "OCMock.h"


SpecBegin(TKViewController)

describe(@"View Controller", ^{

    __block TKViewController *vc;
    beforeEach(^{
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UINavigationController *navVC = [storyBoard instantiateInitialViewController];
        vc = (TKViewController *)[navVC visibleViewController];
    });

    if(@"Shoud be init from story board", ^{
        expect(vc).toNot.beNil();
        expect(vc).to.beInstanceOf([UIView class]);
    });

});

SpecEnd
