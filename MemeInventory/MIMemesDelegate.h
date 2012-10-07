//
//  MIMemesDelegate.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MIMemesViewController;

@interface MIMemesDelegate : NSObject<UICollectionViewDelegate>
{
  @private
  MIMemesViewController * parentController_;
}

@property (strong) MIMemesViewController * parentController;

- (id) initWithViewController:(MIMemesViewController *)viewController;

@end
