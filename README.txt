LazyImageView
=============
LazyImageView is specially designed and Develope to be used with UITableViewCell. when you want to load multiple cell
With UIImageView from server ,you can use this class.

Framework Requierment
=====================
No special frameworks required

How to use
==========
Step 1 : Drag and Drop class files into your project

Step 2 : #import "lazyImageView.h"

Step 3 : // Create a Lazy ImageView and Add it to your View
    
    lazyImageView *imgView = [[lazyImageView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    [imgView setImageWithURL:@"http://www.google.co.in/intl/en_com/images/srpr/logo1w.png"];

    [imgView setUserInteractionEnabled:YES];
    [self.view addSubview:imgView];

Thank you.
