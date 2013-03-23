//
//  ViewController.m
//  LazyImageView
//
//  Created by Dipen on 24/03/13.
//  Copyright (c) 2013 Dipen. All rights reserved.
//

#import "ViewController.h"
#import "lazyImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // Create a Lazy ImageView and Add it to your View
    
    lazyImageView *imgView = [[lazyImageView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    [imgView setImageWithURL:@"http://www.google.co.in/intl/en_com/images/srpr/logo1w.png"];

    [imgView setUserInteractionEnabled:YES];
    [self.view addSubview:imgView];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
