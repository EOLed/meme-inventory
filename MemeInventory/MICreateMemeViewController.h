//
//  MICreateMemeViewController.h
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MIMemeTemplateInterface.h"
#import "MIElasticImageView.h"

@interface MICreateMemeViewController : UIViewController
{
  @private
  id<MIMemeTemplateInterface> template_;
  MIElasticImageView * memeView_;
}

@property (strong) id<MIMemeTemplateInterface> template;
@property (strong) IBOutlet MIElasticImageView *memeView;

- (IBAction)cancel:(id)sender;

@end
