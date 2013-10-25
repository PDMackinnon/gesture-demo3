//
//  PMViewController.h
//  SnapGesture3
//
//  Created by Paul Mackinnon on 25/10/2013.
//  Copyright (c) 2013 Paul Mackinnon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
@property (weak, nonatomic) IBOutlet UILabel *snapRadians;
@property float snapRadValue;

@property (weak, nonatomic) IBOutlet UISlider *theSlider;


@end
