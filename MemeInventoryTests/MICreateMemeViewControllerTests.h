//
//  MICreateMemeViewControllerTests.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "MIMemeTemplateInterface.h"

@class MICreateMemeViewController;

@interface MICreateMemeViewControllerTests : SenTestCase
{
  @private
  MICreateMemeViewController * createController_;
  id<MIMemeTemplateInterface> template_;
}

@property (strong) MICreateMemeViewController * createController;
@property (strong) id<MIMemeTemplateInterface> template;

@end
