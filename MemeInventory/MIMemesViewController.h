//
//  MIMemesViewController.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MIMemesDataSource;
@class MIMemesDelegate;

@interface MIMemesViewController : UICollectionViewController
{
  @private
  IBOutlet MIMemesDataSource * dataSource_;
  IBOutlet MIMemesDelegate * delegate_;
  
}

@property (strong) MIMemesDataSource * dataSource;
@property (strong) MIMemesDelegate * delegate;

@end
