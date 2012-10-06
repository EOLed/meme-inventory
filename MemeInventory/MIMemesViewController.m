//
//  MIMemesViewController.m
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MIMemesViewController.h"
#import "MIMemesDataSource.h"

@interface MIMemesViewController ()

@end

@implementation MIMemesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  
  if (self) {
    self.dataSource = [[MIMemesDataSource alloc] init];
    self.collectionView.dataSource = self.dataSource;
  }
  
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.dataSource = [[MIMemesDataSource alloc] init];
  self.collectionView.dataSource = self.dataSource;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
