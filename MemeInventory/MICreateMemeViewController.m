//
//  MICreateMemeViewController.m
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MICreateMemeViewController.h"
#import "MIElasticImageView.h"

@interface MICreateMemeViewController ()

@end

@implementation MICreateMemeViewController

@synthesize template = template_;
@synthesize memeView = memeView_;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  
  if (self) {
  }
  
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];

	// Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated {
  NSString * imagePath = [[NSBundle mainBundle] pathForResource:self.template.filename
                                                         ofType:@""
                                                    inDirectory:@""];
  UIImage * image = [[UIImage alloc] initWithContentsOfFile:imagePath];
  
  //[self.memeView setImage:image]; 
  //self.memeView = [[UIImageView alloc] initWithImage:image];
  self.memeView.image = image;
  self.memeView.frame = CGRectMake(0, 0, 200, 200);// CGSizeMake(100, 100);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
  [self dismissViewControllerAnimated:YES completion:nil];
}

@end
