//
//  MIMemesDataSource.m
//  MemeInventory
//
//  Created by Amos Chan on 2012-10-05.
//  Copyright (c) 2012 Amos Chan. All rights reserved.
//

#import "MIMemesDataSource.h"
#import "MIMemeCollectionViewCell.h"
#import "MemeTemplate.h"
#import "MIMemeTemplateInterface.h"

@implementation MIMemesDataSource

@synthesize templates = templates_;

- (id) init {
  self = [super init];
  
  if (self) {
    id<MIMemeTemplateInterface> badLuckBrian = [[MemeTemplate alloc] initWithName:@"Bad Luck Brian"
                                                                      andFilename:@"bad-luck-brian.png"];
    id<MIMemeTemplateInterface> frm = [[MemeTemplate alloc] initWithName:@"Forever Resentful Mother"
                                                             andFilename:@"forever-resentful-mother.jpeg"];
    id<MIMemeTemplateInterface> ggg = [[MemeTemplate alloc] initWithName:@"Good Guy Greg"
                                                             andFilename:@"good-guy-greg.jpeg"];
    id<MIMemeTemplateInterface> ski = [[MemeTemplate alloc] initWithName:@"Super Cool Ski Instructor"
                                                             andFilename:@"super-cool-ski-instructor.png"];
    id<MIMemeTemplateInterface> oag = [[MemeTemplate alloc] initWithName:@"Overly Attached Girlfriend"
                                                             andFilename:@"overly-attached-girlfriend.jpg"];
    id<MIMemeTemplateInterface> upvotingObama = [[MemeTemplate alloc] initWithName:@"Upvoting Obama"
                                                                       andFilename:@"upvoting-obama.png"];
    id<MIMemeTemplateInterface> annoyed = [[MemeTemplate alloc] initWithName:@"Annoyed Picard"
                                                                 andFilename:@"annoyed-picard.jpeg"];
    id<MIMemeTemplateInterface> cb = [[MemeTemplate alloc] initWithName:@"Confession Bear" andFilename:@"confession-bear.jpeg"];
    id<MIMemeTemplateInterface> fwp = [[MemeTemplate alloc] initWithName:@"First World Problems" andFilename:@"first-world-problems.jpeg"];
    id<MIMemeTemplateInterface> ff = [[MemeTemplate alloc] initWithName:@"Futurama Fry" andFilename:@"futurama-fry.jpeg"];
    id<MIMemeTemplateInterface> gggina = [[MemeTemplate alloc] initWithName:@"Good Girl Gina" andFilename:@"good-girl-gina.jpeg"];
    id<MIMemeTemplateInterface> itbc = [[MemeTemplate alloc] initWithName:@"Inappropriate Timing Bill Clinton" andFilename:@"inappropriate-timing-bill-clinton.jpeg"];
    id<MIMemeTemplateInterface> mni = [[MemeTemplate alloc] initWithName:@"McKayla is Not Impressed" andFilename:@"mckayla-is-not-impressed.jpeg"];
    id<MIMemeTemplateInterface> philosoraptor = [[MemeTemplate alloc] initWithName:@"Philosoraptor" andFilename:@"philosoraptor.jpeg"];
    id<MIMemeTemplateInterface> rw = [[MemeTemplate alloc] initWithName:@"Redditor's Wife" andFilename:@"redditors-wife.jpeg"];
    id<MIMemeTemplateInterface> sap = [[MemeTemplate alloc] initWithName:@"Socially Awkward Penguin" andFilename:@"socially-awkward-penguin.png"];
    id<MIMemeTemplateInterface> sk = [[MemeTemplate alloc] initWithName:@"Success Kid" andFilename:@"success-kid.png"];
    id<MIMemeTemplateInterface> scc = [[MemeTemplate alloc] initWithName:@"Sudden Clarity Clarence" andFilename:@"sudden-clarity-clarence.jpeg"];
    id<MIMemeTemplateInterface> uhst = [[MemeTemplate alloc] initWithName:@"Unhelpful High School Teacher" andFilename:@"unhelpful-high-school-teacher.jpeg"];
    id<MIMemeTemplateInterface> mostInterestingMan =
        [[MemeTemplate alloc] initWithName:@"The Most Interesting Man in the World"
                               andFilename:@"the-most-interesting-man-in-the-world.jpg"];
    self.templates =
        [[NSMutableArray alloc] initWithObjects:badLuckBrian,
                                                frm,
                                                ggg,
                                                ski,
                                                oag,
                                                upvotingObama,
                                                mostInterestingMan,
         annoyed, cb,fwp, ff, gggina, itbc, mni, philosoraptor, rw, sap, sk, scc, uhst, nil];
  }
  
  return self;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView
      numberOfItemsInSection:(NSInteger)section {
  return [self.templates count];
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView
                   cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  MIMemeCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MemeTemplateCell"
                                                                              forIndexPath:indexPath];
  id<MIMemeTemplateInterface> template = [self.templates objectAtIndex:indexPath.row];
  NSString * imagePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"thumb-%@", template.filename] ofType:@"" inDirectory:@""];
  UIImage * image = [[UIImage alloc] initWithContentsOfFile:imagePath];

  cell.thumbnailImageView.image = image;
  
  return cell;
}

@end
