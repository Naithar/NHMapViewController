//
//  NHMapViewAnnotation.m
//  Pods
//
//  Created by Sergey Minakov on 28.05.15.
//
//

#import "NHMapViewAnnotation.h"

@interface NHMapViewAnnotation ()

@property (nonatomic, strong) NHMapViewAnnotationView *annotationView;

@end

@implementation NHMapViewAnnotation

- (instancetype)init {
    self = [super init];
    
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.annotationView = [[NHMapViewAnnotationView alloc] init];
    self.annotationView.image = [UIImage imageNamed:@"NHMapView.marker.png"];
    self.annotationView.canShowCallout = NO;
}

@end
