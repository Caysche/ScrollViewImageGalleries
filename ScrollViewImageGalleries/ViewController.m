//
//  ViewController.m
//  ScrollViewImageGalleries
//
//  Created by Cay Cornelius on 19/09/16.
//  Copyright © 2016 Cornelius.Media. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) UITapGestureRecognizer *tapGestureRecognizer;

@property (strong, nonatomic) UIImageView *inFieldLighthouseImageView;

@property (strong, nonatomic) UIImageView *nightLighthouseImageView;

@property (strong, nonatomic) UIImageView *zoomLighthouseImageView;

@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) UIImage *imageToPass;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView.scrollEnabled = YES;
    self.scrollView.pagingEnabled = YES;
    
    self.tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(panHandler:)];
    [self.view addGestureRecognizer:self.tapGestureRecognizer];
    
    [self setUpImages];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpImages {
    
    self.imageToPass = [[UIImage alloc] init];
    
    // add in field lighthouse image
    
    self.inFieldLighthouseImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    
    self.inFieldLighthouseImageView.tag = 1;
    
    self.inFieldLighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.inFieldLighthouseImageView.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    
    [self.scrollView addSubview:self.inFieldLighthouseImageView];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.scrollView
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.scrollView
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:320]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:200]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.inFieldLighthouseImageView
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    
    // add night lighthouse image
    
    self.nightLighthouseImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.nightLighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.nightLighthouseImageView.image = [UIImage imageNamed:@"Lighthouse-night"];
    
    [self.scrollView addSubview:self.nightLighthouseImageView];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.nightLighthouseImageView
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.nightLighthouseImageView
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.inFieldLighthouseImageView
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.nightLighthouseImageView
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:320]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.nightLighthouseImageView
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:200]];
    
    // add zoomed lighthouse image
    
    self.zoomLighthouseImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.zoomLighthouseImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.zoomLighthouseImageView.image = [UIImage imageNamed:@"Lighthouse-zoomed"];
    
    [self.scrollView addSubview:self.zoomLighthouseImageView];
    
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.nightLighthouseImageView
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:320]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1.0
                                                                 constant:420]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.zoomLighthouseImageView
                                                                attribute:NSLayoutAttributeRight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];

}

-(void)panHandler:(UITapGestureRecognizer *)recognizer {
    CGPoint pointInView = [recognizer locationInView:self.scrollView];
    
    if (CGRectContainsPoint(self.inFieldLighthouseImageView.frame, pointInView)) {
        self.imageToPass = self.inFieldLighthouseImageView.image;
        [self performSegueWithIdentifier:@"detailSegue" sender:self.imageToPass];
    } else if (CGRectContainsPoint(self.nightLighthouseImageView.frame, pointInView)) {
        self.imageToPass = self.nightLighthouseImageView.image;
        [self performSegueWithIdentifier:@"detailSegue" sender:self.imageToPass];
    } else if (CGRectContainsPoint(self.zoomLighthouseImageView.frame, pointInView)) {
        self.imageToPass = self.zoomLighthouseImageView.image;
        [self performSegueWithIdentifier:@"detailSegue" sender:self.imageToPass];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *destinationDetailViewController = [segue destinationViewController];
    
    // myDestinationViewController.variable = sourceViewController variabe
    destinationDetailViewController.passedImage = self.imageToPass;
}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

@end
