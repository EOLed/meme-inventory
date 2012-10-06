//
//  MIMemeInterface.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MIMemeInterface <NSObject>

- (NSString *) getName;
- (NSString *) getFilename;
- (NSNumber *) getIdentifier;
- (NSNumber *) getTemplateId;

@end
