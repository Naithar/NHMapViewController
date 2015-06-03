//
//  NViewController.m
//  NHMapViewController
//
//  Created by Naithar on 05/28/2015.
//  Copyright (c) 2014 Naithar. All rights reserved.
//

#import "NViewController.h"
#import <NHMapNavigationViewController.h>

@interface NViewController ()

@end

@implementation NViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NHMapNavigationViewController *navigation = [[NHMapNavigationViewController alloc] init];
        [self presentViewController:navigation animated:YES completion:nil];
        
        [navigation.mapViewController setMapCenterWithLat:55.703640
                                                   andLon:37.515708];
        
        [navigation.mapViewController setMarkName:@"MSU" andLocationLat:55.703640 andLon:37.515708];
        navigation.mapViewController.mark.annotationView.useCustomAnnotation = YES;
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
                    [navigation.mapViewController setMarkName:@"MSU1" andLocationLat:55.703641 andLon:37.5158];
            
        });

        
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
