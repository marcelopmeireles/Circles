//
//  Planet.h
//  Circles
//
//  Created by Marcelo Meireles on 02/06/15.
//  Copyright (c) 2015 dapplab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Planet : UIView
-(id) initWithFrame:(CGRect)frame;
-(id) initWithPoint:(CGPoint)point andDiameter:(float)diameter;
- (void) orbitEarthWithDuration:(int)duration andEarth:(Planet *)earth;
- (void) orbitSunWithDuration:(int)duration andSun:(Planet *)sun;

@end
