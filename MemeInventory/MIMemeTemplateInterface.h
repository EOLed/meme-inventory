//
//  MIMemeTemplateInterface.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MIMemeTemplateInterface <NSObject>

- (NSString *) name;
- (NSString *) filename;
- (NSNumber *) identifier;
- (NSNumber *) custom;

@end
