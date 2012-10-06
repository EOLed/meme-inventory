//
//  MemeInventoryTests.m
//  MemeInventoryTests
//
//  Created by Amos Chan on 2012-10-02.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MemeInventoryTests.h"
#import "MIMemesViewController.h"

@implementation MemeInventoryTests

@synthesize memesViewController = memesViewController_;

- (void)setUp
{
  [super setUp];
  
  self.memesViewController = [[MIMemesViewController alloc] init];
}

- (void)tearDown
{
  // Tear-down code here.
  self.memesViewController = nil;
  [super tearDown];
}

- (void)testExample
{
  STFail(@"Unit tests are not implemented yet in MemeInventoryTests");
}

@end
