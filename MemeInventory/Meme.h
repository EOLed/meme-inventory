//
//  Meme.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "MIMemeInterface.h"

@interface Meme : NSObject<MIMemeInterface>

@property (nonatomic, retain) NSNumber * identifier;
@property (nonatomic, retain) NSNumber * templateId;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * filename;

@end
