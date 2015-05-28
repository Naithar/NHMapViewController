//
//  NHMapNavigationViewController.h
//  Pods
//
//  Created by Sergey Minakov on 28.05.15.
//
//

#import <UIKit/UIKit.h>
#import "NHMapViewController.h"

@interface NHMapNavigationViewController : UINavigationController

@property (nonatomic, readonly, strong) NHMapViewController *mapViewController;


+ (Class)mapViewControllerClass;
@end
