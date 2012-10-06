//
//  MemeTemplate.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "MIMemeTemplateInterface.h"

@interface MemeTemplate : NSObject<MIMemeTemplateInterface>
{
  @private
  NSString * name_;
  NSNumber * identifier_;
  NSString * filename_;
  NSNumber * custom_;
}

@property (strong) NSNumber * identifier;
@property (strong) NSString * name;
@property (strong) NSString * filename;
@property (strong) NSNumber * custom;

- (id) initWithName:(NSString *)name andFilename:(NSString *)filename;

@end
