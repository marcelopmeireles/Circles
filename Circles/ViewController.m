//
//  ViewController.m
//  Circles
//
//  Created by Marcelo Meireles on 02/06/15.
//  Copyright (c) 2015 dapplab. All rights reserved.
//

#import "ViewController.h"
#import "Planet.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    UIView *bgZodiac = [[UIView alloc] initWithFrame:CGRectMake((self.view.center.x - (320/2))-2/2, ((self.view.center.y - 102) - 320/2), 320, 320)];
    bgZodiac.backgroundColor = [UIColor whiteColor];
    bgZodiac.alpha = 0.1;
    bgZodiac.layer.cornerRadius = 320/2;
    [self.view addSubview:bgZodiac];
    
    UIView *zodiac = [[UIView alloc] initWithFrame:CGRectMake((self.view.center.x - (300/2))-2/2, ((self.view.center.y - 102) - 300/2), 300, 300)];
    zodiac.backgroundColor = [UIColor whiteColor];
    zodiac.alpha = 0.1;
    zodiac.layer.cornerRadius = 300/2;
    [self.view addSubview:zodiac];
    
    Planet *earth = [[Planet alloc] initWithFrame:CGRectMake(self.view.center.x - 2, self.view.center.y - 102, 4, 0)];
    earth.backgroundColor = [UIColor blackColor];
    [self.view addSubview:earth];
    
    Planet *sun = [[Planet alloc] initWithFrame:CGRectMake(self.view.center.x - 10, self.view.center.y - 190, 20, 0)];
    sun.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:sun];
    [sun orbitEarthWithDuration:365 andEarth:earth];
    
    Planet *moon = [[Planet alloc] initWithFrame:CGRectMake(self.view.center.x - 10, self.view.center.y - 140, 20, 0)];
    moon.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:moon];
    [moon orbitEarthWithDuration:28 andEarth:earth];
    
    Planet *venus = [[Planet alloc] initWithFrame:CGRectMake(self.view.center.x - 2, self.view.center.y - 156, 4, 0)];
    venus.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:venus];
    [venus orbitSunWithDuration:255 andSun:sun];
    
    Planet *mercury = [[Planet alloc] initWithFrame:CGRectMake(self.view.center.x - 2, self.view.center.y - 166, 4, 0)];
    mercury.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:mercury];
    [mercury orbitSunWithDuration:88 andSun:sun];
    
    
    Planet *mars = [[Planet alloc] initWithFrame:CGRectMake(self.view.center.x - 2, self.view.center.y - 225, 4, 0)];
    mars.backgroundColor = [UIColor redColor];
    [self.view addSubview:mars];
    [mars orbitEarthWithDuration:249 andEarth:earth];
    
    Planet *jupiter = [[Planet alloc] initWithFrame:CGRectMake(self.view.center.x - 4, self.view.center.y - 238, 8, 0)];
    jupiter.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:jupiter];
    [jupiter orbitEarthWithDuration:4332 andEarth:earth];
    
    Planet *saturn = [[Planet alloc] initWithFrame:CGRectMake(self.view.center.x - 3, self.view.center.y - 248, 6, 0)];
    saturn.backgroundColor = [UIColor grayColor];
    [self.view addSubview:saturn];
    [saturn orbitEarthWithDuration:10759 andEarth:earth];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
