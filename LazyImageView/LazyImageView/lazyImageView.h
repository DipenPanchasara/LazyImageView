//
//  lazyImageView.h
//  JigsawPuzzle
//
//  Created by Dipen on 23/03/13.
//  Copyright (c) 2013 Dipen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lazyImageView : UIImageView
{
    NSMutableData *imageData;
}

@property (nonatomic, retain) NSMutableData *imageData;

- (void)setImageWithURL:(NSString *)urlString;

@end
