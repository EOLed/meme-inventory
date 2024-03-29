//
//  MIElasticImageView.m
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MIElasticImageView.h"

@implementation MIElasticImageView

@dynamic image;

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    self.clipsToBounds = YES;
    _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:_imageView];
  }
  return self;
}

- (id)initWithImage:(UIImage *)image
{
  self = [self initWithFrame:CGRectZero];
  if (self) {
    _imageView.image = image;
    [_imageView sizeToFit];
    
    // initialize frame to be same size as imageView
    self.frame = _imageView.bounds;
  }
  return self;
}

- (UIImage *)image
{
  return _imageView.image;
}

- (void)setImage:(UIImage *)anImage
{
  _imageView.image = anImage;
  [self setNeedsLayout];
}

- (void)layoutSubviews
{
  // compute scale factor for imageView
  CGFloat widthScaleFactor = CGRectGetWidth(self.bounds) / self.image.size.width;
  CGFloat heightScaleFactor = CGRectGetHeight(self.bounds) / self.image.size.height;
  
  CGFloat imageViewXOrigin = 0;
  CGFloat imageViewYOrigin = 0;
  CGFloat imageViewWidth;
  CGFloat imageViewHeight;
  
  
  // if image is narrow and tall, scale to width and align vertically to the top
  if (widthScaleFactor > heightScaleFactor) {
    imageViewWidth = self.image.size.width * widthScaleFactor;
    imageViewHeight = self.image.size.height * widthScaleFactor;
  }
  
  // else if image is wide and short, scale to height and align horizontally centered
  else {
    imageViewWidth = self.image.size.width * heightScaleFactor;
    imageViewHeight = self.image.size.height * heightScaleFactor;
    imageViewXOrigin = - (imageViewWidth - CGRectGetWidth(self.bounds))/2;
  }
  
  if (self.image.size.width > self.bounds.size.width) {
    imageViewWidth = self.bounds.size.width;
    imageViewHeight = imageViewWidth * imageViewHeight / (self.image.size.width * heightScaleFactor);
    imageViewXOrigin = 0;
  }
  
  NSLog(@"image view height: %f", imageViewHeight);
  
  _imageView.frame = CGRectMake(imageViewXOrigin,
                                imageViewYOrigin,
                                imageViewWidth,
                                imageViewHeight);
}

- (CGFloat) imageViewHeight {
  NSLog(@"imageviewheight: %f", _imageView.frame.size.height);
  return _imageView.frame.size.height;
}

- (void)setFrame:(CGRect)frame
{
  [super setFrame:frame];
  [self setNeedsLayout];
}

@end
