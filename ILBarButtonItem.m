//
// ILBarButtonItem.m
// Version 1.0
// Created by Isaac Lim (isaacl.net) on 1/1/13.
//

#import "ILBarButtonItem.h"

@interface ILBarButtonItem() {
    id customTarget;
    UIButton *customButton;
}

@end

@implementation ILBarButtonItem

- (id)initWithImage:(UIImage *)image
      selectedImage:(UIImage *)selectedImage
             target:(id)target action:(SEL)action {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0.0f, 0.0f, 30.0f, 30.0f)];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selectedImage forState:UIControlStateHighlighted];
    
    /* Init method inherited from UIBarButtonItem */
    self = [[ILBarButtonItem alloc] initWithCustomView:btn];

    if (self) {
        /* Assign ivars */
        customButton = btn;
        customImage = image;
        customSelectedImage = selectedImage;
        customTarget = target;
        customAction = action;
    }

    return self;
}

+ (ILBarButtonItem *)barItemWithImage:(UIImage*)image
                        selectedImage:(UIImage*)selectedImage
                               target:(id)target
                               action:(SEL)action
{
    return [[ILBarButtonItem alloc] initWithImage:image
                                    selectedImage:selectedImage
                                           target:target
                                           action:action];
}

- (void)setCustomImage:(UIImage *)image {
    customImage = image;
    [customButton setImage:image forState:UIControlStateNormal];
}

- (void)setCustomSelectedImage:(UIImage *)image {
    customSelectedImage = image;
    [customButton setImage:image forState:UIControlStateHighlighted];
}

- (void)setCustomAction:(SEL)action {
    customAction = action;
    
    [customButton removeTarget:nil
                        action:NULL
             forControlEvents:UIControlEventAllEvents];
    
    [customButton addTarget:customTarget
                     action:action
           forControlEvents:UIControlEventTouchUpInside];
}

@end
