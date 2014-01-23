//
//  PMViewController.m
//  SnapGesture3
//
//  Created by Paul Mackinnon on 25/10/2013.
//  Copyright (c) 2013 Paul Mackinnon. All rights reserved.
//

#import "PMViewController.h"

@interface PMViewController ()

@end

@implementation PMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"gear-1" ofType:@"html" inDirectory:@"web"];
    
    NSLog(@"path = %@ \n\n",path);
    
	
	NSString *fileText = [NSString stringWithContentsOfFile:path encoding: NSUTF8StringEncoding error:NULL];
	
    NSLog(@"fileText = %@",fileText);
    
	NSURL *base = [[NSURL alloc] initFileURLWithPath:path];
	
	[_mainWebView loadHTMLString:fileText baseURL:base];
    
    self.snapRadValue = [self.theSlider value];
    
    
    
    /*
    //stop scroll  !
	UIScrollView* sv = nil;
	for(UIView* v in _mainWebView.subviews){
		if([v isKindOfClass:[UIScrollView class] ]){
			sv = (UIScrollView*) v;
            sv.scrollEnabled = NO;
			//sv.bounces = NO;
		}
	}
    */

}


- (IBAction)didSwipeRight:(UISwipeGestureRecognizer *)sender {

    NSLog(@"swipe right\n");

    NSString *jsreturn = [self.mainWebView stringByEvaluatingJavaScriptFromString:@"rotateRight();"];

    NSLog(@"jsreturn = %@",jsreturn);




}

- (IBAction)didSwipeLeft:(UISwipeGestureRecognizer *)sender {
    
    NSLog(@"swipe left\n");

    NSString *jsreturn = [self.mainWebView stringByEvaluatingJavaScriptFromString:@"rotateLeft();"];
    
    NSLog(@"jsreturn = %@",jsreturn);
    
    
}


- (IBAction)rotateGesture:(UIRotationGestureRecognizer *)sender {
    
    
    if ([sender state] == UIGestureRecognizerStateBegan || [sender state] == UIGestureRecognizerStateChanged) {
        
        if ([sender rotation] > self.snapRadValue) { // == 30 degrees default
            NSString *jsreturn = [self.mainWebView stringByEvaluatingJavaScriptFromString:@"rotateRight();"];
            [sender setRotation:0];


        }
        if ([sender rotation] < -self.snapRadValue) { // == -30 degrees default
            NSString *jsreturn = [self.mainWebView stringByEvaluatingJavaScriptFromString:@"rotateLeft();"];
            [sender setRotation:0];
        }
        
        NSLog(@"rotation = %f",[sender rotation]);
        
    }
    
    
}

- (IBAction)applySliderValue:(UISlider *)sender {
    
    NSLog(@"slider = %f",[sender value]);
    
    [self.snapRadians setText:[NSString stringWithFormat:@"%g", sender.value]];
    
    self.snapRadValue = [self.theSlider value];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
