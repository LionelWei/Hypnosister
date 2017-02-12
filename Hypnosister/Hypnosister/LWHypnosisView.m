//
//  LWHypnosisView.m
//  Hypnosister
//
//  Created by Lionel Wei on 2/10/17.
//  Copyright © 2017 Lionel Wei. All rights reserved.
//

#import "LWHypnosisView.h"

@interface LWHypnosisView ()

//@property (nonatomic) CGRect frame;
@property UIColor *circleColor;

@end

@implementation LWHypnosisView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float radius = (MIN(bounds.size.width, bounds.size.height)/2.0);
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    path.lineWidth = 10;
    [self.circleColor setStroke];
    [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    
    [path stroke];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ was touched", self);
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    self.circleColor = randomColor;
    [self setNeedsDisplay];
}

- (void) updateColor:(UIColor *) color {
    self.circleColor = color;
    [self setNeedsDisplay];
}

@end
