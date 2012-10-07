//
//  MIMemesDelegate.m
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MIMemesDelegate.h"
#import "MICreateMemeViewController.h"
#import "MIMemesViewController.h"
#import "MIMemesDataSource.h"

@implementation MIMemesDelegate

- (id) initWithViewController:(MIMemesViewController *)viewController {
  self = [super init];
  if (self) {
    self.parentController = viewController;
  }
  
  return self;
}

#pragma mark - Managing the selected cells

- (BOOL)     collectionView:(UICollectionView *)collectionView
shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  NSLog(@"should select");
  return YES;
}

- (void)  collectionView:(UICollectionView *)collectionView
didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
  MICreateMemeViewController * createController = [[UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"MICreateMemeViewController"];
  createController.template = [self.parentController.dataSource.templates objectAtIndex:indexPath.row];
  
  UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:createController];
  [self.parentController presentViewController:nav
                                      animated:YES
                                    completion:^{ }];
}

#pragma mark - Managing cell highlighting

- (BOOL)        collectionView:(UICollectionView *)collectionView
shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
  NSLog(@"should highlight");
  return YES;
}

@end
