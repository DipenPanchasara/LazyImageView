//
//  lazyImageView.m
//  JigsawPuzzle
//
//  Created by Dipen on 23/03/13.
//  Copyright (c) 2013 Dipen. All rights reserved.
//

#import "lazyImageView.h"

@implementation lazyImageView

@synthesize imageData;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        // Initially set Placeholder Image
        [self setImage:[UIImage imageNamed:@"placeholder.jpg"]];
    }
    return self;
}

- (void)setImageWithURL:(NSString *)urlString
{
    NSURL *url = [NSURL URLWithString:[urlString stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLCacheStorageNotAllowed timeoutInterval:60.0f];
    
    NSURLConnection *cn = [NSURLConnection connectionWithRequest:request delegate:self];
    [cn start];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"%@",[error debugDescription]);
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    self.imageData = [[NSMutableData alloc] initWithCapacity:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.imageData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if([self.imageData length] > 0)
    {
        // Set New Image
        UIImage *image = [UIImage imageWithData:self.imageData];
        [self setImage:image];
    }
}

@end
