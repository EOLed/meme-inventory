//
//  MIMemesDataSource.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MemeTemplate;

@interface MIMemesDataSource : NSObject<UICollectionViewDataSource>
{
  @private
  NSMutableArray * templates_;
}

@property (strong) NSMutableArray * templates;

@end
