//
//  DetailViewController.h
//  ScrollViewImageGalleries
//
//  Created by Cay Cornelius on 19/09/16.
//  Copyright © 2016 Cornelius.Media. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UIScrollViewDelegate>


@property (strong, nonatomic) UIImage *passedImage;

@end
