//
//  NHMapViewController.h
//  Pods
//
//  Created by Sergey Minakov on 28.05.15.
//
//

#import <UIKit/UIKit.h>
@import MapKit;

@interface NHMapViewController : UIViewController

@property (nonatomic, readonly, strong) MKMapView *mapView;
@end
