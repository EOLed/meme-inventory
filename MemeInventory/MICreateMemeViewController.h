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
#import "EGOTextView.h"

@class EGOTextView;

@interface MICreateMemeViewController : UIViewController <EGOTextViewDelegate>
{
  @private
  id<MIMemeTemplateInterface> template_;
  MIElasticImageView * memeView_;
  EGOTextView * topCaption_;
  EGOTextView * bottomCaption_;
  UIScrollView * scrollView_;
}

@property (strong) id<MIMemeTemplateInterface> template;
@property (strong) IBOutlet MIElasticImageView *memeView;
@property (nonatomic, retain) EGOTextView * topCaption;
@property (nonatomic, retain) EGOTextView * bottomCaption;
@property (strong) UIScrollView * scrollView;

- (IBAction)cancel:(id)sender;

@end
