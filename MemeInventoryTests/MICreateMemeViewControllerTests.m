//
//  MICreateMemeViewControllerTests.m
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MICreateMemeViewControllerTests.h"
#import "MICreateMemeViewController.h"
#import "MIMemeTemplateInterface.h"
#import "MemeTemplate.h"

@implementation MICreateMemeViewControllerTests
@synthesize createController = createController_;
@synthesize template = template_;

- (void) setUp {
}

- (void) testInitWithTemplate {
  id<MIMemeTemplateInterface> template = [[MemeTemplate alloc] initWithName:@"name" andFilename:@"filename"];
  
  MICreateMemeViewController * controller = [[MICreateMemeViewController alloc] initWithTemplate:template];
  
  STAssertEqualObjects(template, controller.template, @"The template should be passed through the intializer.");
}

@end
