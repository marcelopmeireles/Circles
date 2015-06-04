//
//  Planet.m
//  Circles
//
//  Created by Marcelo Meireles on 02/06/15.
//  Copyright (c) 2015 dapplab. All rights reserved.
//

#import "Planet.h"


@implementation Planet

-(id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, frame.size.width)];
    self.layer.cornerRadius = frame.size.width / 2;
    return self;
}

-(id) initWithPoint:(CGPoint)point andDiameter:(float)diameter
{
    CGRect frame = CGRectMake(point.x, point.y, diameter, diameter);
    self = [super initWithFrame:frame];
    self.layer.cornerRadius = diameter/2;
    return self;
}

- (void) orbitEarthWithDuration:(int)duration andEarth:(Planet *)earth
{
    [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        CGAffineTransform earthAffine = CGAffineTransformMakeTranslation(earth.frame.origin.x, earth.frame.origin.y);
        [self setTransform:CGAffineTransformRotate(earthAffine, 3.141593 * 2.0)];
    }completion:^(BOOL finished){
        if (finished) {
            [self orbitEarthWithDuration:duration andEarth:earth];
        }
    }];
}

- (void) orbitSunWithDuration:(int)duration andSun:(Planet *)sun
{
    [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        CGAffineTransform sunAffine = CGAffineTransformMakeTranslation(sun.frame.origin.x, sun.frame.origin.y);
        [self setTransform:CGAffineTransformRotate(sunAffine, 3.141593 * 2.0)];
    }completion:^(BOOL finished){
        if (finished) {
            [self orbitSunWithDuration:duration andSun:sun];
        }
    }];
}

@end
