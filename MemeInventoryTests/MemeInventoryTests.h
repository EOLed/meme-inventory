//
//  MemeInventoryTests.h
//  MemeInventoryTests
//
//  Created by Amos Chan on 2012-10-02.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@class MIMemesViewController;

@interface MemeInventoryTests : SenTestCase
{
  @private
  MIMemesViewController * memesViewController_;
}

@property (strong) MIMemesViewController * memesViewController;

@end
