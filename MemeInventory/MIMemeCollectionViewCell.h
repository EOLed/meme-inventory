//
//  MIMemeCollectionViewCell.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MIMemeCollectionViewCell : UICollectionViewCell
{
  @private
  UIImageView *thumbnailImageView_;
}

@property (strong) IBOutlet UIImageView * thumbnailImageView;

@end
