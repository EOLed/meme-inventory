//
//  MIElasticImageView.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MIElasticImageView : UIView {
  UIImageView * _imageView;
}

@property (strong) UIImage *image;

- (id) initWithImage:(UIImage *)image;

@end