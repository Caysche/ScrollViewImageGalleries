//
//  DetailViewController.m
//  ScrollViewImageGalleries
//
//  Created by Cay Cornelius on 19/09/16.
//  Copyright © 2016 Cornelius.Media. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) UIImageView *inFieldLighthouseImageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.scrollView.scrollEnabled = YES;
    self.scrollView.minimumZoomScale = 0.5;
    self.scrollView.maximumZoomScale = 4.0;
    
    [self setUpImages];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpImages {
    self.inFieldLighthouseImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.inFieldLighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.inFieldLighthouseImageView.image = self.passedImage;
    
    [self.scrollView addSubview:self.inFieldLighthouseImageView];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                                attribute:NSLayoutAttributeBottom
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                                attribute:NSLayoutAttributeRight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.inFieldLighthouseImageView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
