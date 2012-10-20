//
//  MICreateMemeViewController.m
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-06.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MICreateMemeViewController.h"
#import "MIElasticImageView.h"
#import "EGOTextView.h"

@interface MICreateMemeViewController ()

@end

@implementation MICreateMemeViewController

@synthesize template = template_;
@synthesize memeView = memeView_;
@synthesize topCaption = topCaption_;
@synthesize scrollView = scrollView_;

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
  [self registerForKeyboardNotifications];
}

- (void) viewWillAppear:(BOOL)animated {
  NSString * imagePath = [[NSBundle mainBundle] pathForResource:self.template.filename
                                                         ofType:@""
                                                    inDirectory:@""];
  UIImage * image = [[UIImage alloc] initWithContentsOfFile:imagePath];
  
  self.memeView = [[MIElasticImageView alloc] initWithFrame:CGRectMake(0,
                                                                       0,
                                                                       self.view.frame.size.width,
                                                                       self.view.frame.size.height)];
  [self.memeView setImage:image];
    
  //self.memeView.backgroundColor = [UIColor redColor];
  
  self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,
                                                                   0,
                                                                   self.view.frame.size.width,
                                                                   [self.memeView imageViewHeight])];
  self.scrollView.clipsToBounds = YES;
  self.scrollView.contentMode = (UIViewContentModeScaleAspectFit);
  //self.scrollView.autoresizingMask = ( UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
  [self.scrollView addSubview:self.memeView];
  
  //self.scrollView.backgroundColor = [UIColor blackColor];
  
  //[self.memeView setImage:image]; 
  //self.memeView = [[UIImageView alloc] initWithImage:image];
  
  
  [self.view addSubview:self.scrollView];
}

- (void) viewDidAppear:(BOOL)animated {
  self.memeView.frame = CGRectMake(0,
                                   0,
                                   self.view.frame.size.width,
                                   [self.memeView imageViewHeight]);
  self.scrollView.contentSize = self.memeView.frame.size;
  
  self.topCaption = [[EGOTextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.memeView.frame.size.height/2)];
  [self configureCaption:self.topCaption];
  
  self.bottomCaption = [[EGOTextView alloc] initWithFrame:CGRectMake(0, self.memeView.frame.size.height/2, self.view.frame.size.width, self.memeView.frame.size.height/2)];
  [self configureCaption:self.bottomCaption];
  
  [self.scrollView addSubview:self.topCaption];
  [self.scrollView addSubview:self.bottomCaption];
}

- (void)configureCaption:(EGOTextView *)textView {
  textView.delegate = self;
  textView.backgroundColor = [UIColor clearColor];
  textView.textInputView.backgroundColor = [UIColor clearColor];
  textView.autocorrectionType = UITextAutocorrectionTypeNo;
  textView.autocapitalizationType = UITextAutocapitalizationTypeAllCharacters;
  textView.autoresizingMask = UIViewAutoresizingNone;
  textView.scrollEnabled = NO;
  textView.font = [UIFont fontWithName:@"Impact" size:30];
}

- (void)egoTextViewDidChange:(EGOTextView *)textView {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
  [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)registerForKeyboardNotifications
{
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(keyboardWasShown:)
                                               name:UIKeyboardDidShowNotification object:nil];
  
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(keyboardWillBeHidden:)
                                               name:UIKeyboardWillHideNotification object:nil];
  
}

- (void)keyboardWasShown:(NSNotification*)aNotification
{
  NSDictionary* info = [aNotification userInfo];
  CGSize kbSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
  
  UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbSize.height, 0.0);
  self.scrollView.contentInset = contentInsets;
  self.scrollView.scrollIndicatorInsets = contentInsets;
  
  // If active text field is hidden by keyboard, scroll it so it's visible
  // Your application might not need or want this behavior.
/*  CGRect aRect = self.view.frame;
  aRect.size.height -= kbSize.height;
  if (!CGRectContainsPoint(aRect, activeField.frame.origin) ) {
    CGPoint scrollPoint = CGPointMake(0.0, activeField.frame.origin.y-kbSize.height);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
  }*/
}

// Called when the UIKeyboardWillHideNotification is sent
- (void)keyboardWillBeHidden:(NSNotification*)aNotification
{
  UIEdgeInsets contentInsets = UIEdgeInsetsZero;
  self.scrollView.contentInset = contentInsets;
  self.scrollView.scrollIndicatorInsets = contentInsets;
}

@end
