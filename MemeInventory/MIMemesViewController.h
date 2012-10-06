//
//  MIMemesViewController.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MIMemesDataSource;

@interface MIMemesViewController : UICollectionViewController
{
  @private
  IBOutlet MIMemesDataSource * dataSource_;
}

@property (strong) MIMemesDataSource * dataSource;

@end
