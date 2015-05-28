//
//  NHMapViewAnnotationView.m
//  Pods
//
//  Created by Sergey Minakov on 28.05.15.
//
//

#import "NHMapViewAnnotationView.h"
#import <WYPopoverController.h>

@interface NHMapViewAnnotationView ()

@property (nonatomic, strong) WYPopoverController *popoverController;
@property (nonatomic, strong) UIViewController *contentController;

@end

@implementation NHMapViewAnnotationView


- (instancetype)init {
    self = [super init];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit {
    self.contentController = [[UIViewController alloc] init];
    self.contentController.view.backgroundColor = [UIColor redColor];
    
    self.popoverController = [[WYPopoverController alloc] initWithContentViewController:self.contentController];
    self.popoverController.popoverContentSize = CGSizeMake(100, 100);
}

- (void)showPopover {
    [self.popoverController presentPopoverFromRect:self.bounds
                                            inView:self
                          permittedArrowDirections:WYPopoverArrowDirectionAny
                                          animated:YES];
}

@end
