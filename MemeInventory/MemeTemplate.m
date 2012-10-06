  //
//  MemeTemplate.m
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MemeTemplate.h"

@implementation MemeTemplate

@synthesize identifier = identifier_;
@synthesize name = name_;
@synthesize custom = custom_;
@synthesize filename = filename_;

- (id) initWithName:(NSString *)name andFilename:(NSString *)filename {
  self = [super init];
  if (self) {
    self.name = name;
    self.filename = filename;
  }
  
  return self;
}

@end
