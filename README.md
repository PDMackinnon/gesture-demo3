gesture-demo3
=============

Source code to support adding gesture recognizers to a hybrid iOS native / HTML5 app

This demo shows a webview with just an image which we can rotate by invoking a javascript function rotateRight() or rotateLeft()

This rotates the image by 30 degrees using CSS transform

To call the javascript there are three gesture recognisers on the host view - 

swipe left: rotate left

swipe right : rotate right

rotation gesture (two fingers): rotate continuously, but quantised initially to 30 degrees so it will trigger after a 30 degrees of finger rotation by one call to the javascript. However, there is a native slider as well which allows the user to adjust sensitivity. A low value triggers the call after a small rotation, so it goes faster. A a large value does the opposite. Be aware that the value reading is given in radians.

2 * PI radians = one full circle ( i.e. the circumferance of a unit radius circle equals the angle of a full circle in radians. So 2 * PI * r => 360 degrees = 2 * PI radians or 180 degrees = PI radians )

So 30 degrees is one sixth of 180 degrees i.e. 30 degrees = PI / 6 = 3.14 / 6 = 0.523 radians as initial value of the slider which has a range of 0.1 and 3.14

These values are in the storyboard attributes inspector for the slider.

