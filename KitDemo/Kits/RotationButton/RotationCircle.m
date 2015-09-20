//
//  RotationCircle.m
//  RotationCircle
//
//  Created by tangxianhai on 15/8/5.
//  Copyright (c) 2015 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "RotationCircle.h"


@implementation RotationCircle

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawCanvas1WithCircleRect: (CGRect)circleRect
{
    //// Color Declarations
    UIColor* color = [UIColor whiteColor];

    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: circleRect];
    [color setStroke];
    ovalPath.lineWidth = 1;
    CGFloat ovalPattern[] = {10, 10};
    [ovalPath setLineDash: ovalPattern count: 2 phase: 0];
    [ovalPath stroke];
}

#pragma mark Generated Images

+ (UIImage*)imageOfCanvas1WithCircleRect: (CGRect)circleRect
{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(circleRect.size.height, circleRect.size.height), NO, 0.0f);
    [RotationCircle drawCanvas1WithCircleRect: circleRect];

    UIImage* imageOfCanvas1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return imageOfCanvas1;
}

@end