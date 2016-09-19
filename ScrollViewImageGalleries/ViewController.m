//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Cay Cornelius on 19/09/16.
//  Copyright © 2016 Cornelius.Media. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIView *contentView = [[UIView alloc] init];
//    [self.scrollView addSubview:contentView];
    
    self.scrollView.scrollEnabled = YES;
    self.scrollView.pagingEnabled = YES;
    
    [self setUpImages];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpImages {
    
    // add in field lighthouse image
    
    UIImageView *inFieldLighthouseImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    inFieldLighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    inFieldLighthouseImageView.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    
    [self.scrollView addSubview:inFieldLighthouseImageView];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:inFieldLighthouseImageView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.scrollView
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:inFieldLighthouseImageView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.scrollView
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:inFieldLighthouseImageView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:320]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:inFieldLighthouseImageView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:200]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:inFieldLighthouseImageView
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    
    // add night lighthouse image
    
    UIImageView *nightLighthouseImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    nightLighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    nightLighthouseImageView.image = [UIImage imageNamed:@"Lighthouse-night"];
    
    [self.scrollView addSubview:nightLighthouseImageView];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:nightLighthouseImageView
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:nightLighthouseImageView
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:inFieldLighthouseImageView
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:nightLighthouseImageView
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:320]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:nightLighthouseImageView
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:200]];
    
    // add zoomed lighthouse image
    
    UIImageView *zoomLighthouseImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    zoomLighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    zoomLighthouseImageView.image = [UIImage imageNamed:@"Lighthouse-zoomed"];
    
    [self.scrollView addSubview:zoomLighthouseImageView];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nightLighthouseImageView
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:320]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:420]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeRight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];

}

@end
