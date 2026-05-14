Toast for iOS
=============

Toast is an Objective-C category that adds toast notifications to the `UIView` object class. It is intended to be simple, lightweight, and easy to use. Most
 toast notifications can be triggered with a single line of code.

**Using Swift? A native swift port of this library is now available: [Toast-Swift](https://github.com/scalessec/Toast-Swift "Toast-Swift")**

Screenshots
---------
![Toast Screenshots](toast_screenshots.jpg)


Basic Examples
---------
```objc
// basic usage
[self.view makeToast:@"This is a piece of toast."];

// toast with a specific duration and position
[self.view makeToast:@"This is a piece of toast with a specific duration and position." 
            duration:3.0
            position:CSToastPositionTop];

// toast with all possible options
[self.view makeToast:@"This is a piece of toast with a title & image"
            duration:3.0
            position:[NSValue valueWithCGPoint:CGPointMake(110, 110)]
               title:@"Toast Title"
               image:[UIImage imageNamed:@"toast.png"]
               style:nil
          completion:^(BOOL didTap) {
              if (didTap) {
                  NSLog(@"completion from tap");
              } else {
                  NSLog(@"completion without tap");
              }
          }];
                
// display toast with an activity spinner
[self.view makeToastActivity:CSToastPositionCenter];

// display any view as toast
[self.view showToast:myView];
```

But wait, there's more!
---------
```objc
// create a new style
CSToastStyle *style = [[CSToastStyle alloc] initWithDefaultStyle];

// this is just one of many style options
style.messageColor = [UIColor orangeColor];

// present the toast with the new style
[self.view makeToast:@"This is a piece of toast."
            duration:3.0
            position:CSToastPositionBottom
               style:style];

// or perhaps you want to use this style for all toasts going forward?
// just set the shared style and there's no need to provide the style again
[CSToastManager setSharedStyle:style];

// toggle "tap to dismiss" functionality
[CSToastManager setTapToDismissEnabled:YES];

// toggle queueing behavior
[CSToastManager setQueueEnabled:YES];

// immediately hides all toast views in self.view
[self.view hideAllToasts];
```
    
See the demo project for more examples.

Installation
------------------

### Swift Package Manager

In Xcode:

1. Open your project.
2. Go to **File > Add Package Dependencies**.
3. Enter this repository URL.
4. Select the required version, branch, or commit.
5. Add the `Toast` package product to your app target.

If your fork does not yet have a release tag, use a branch-based requirement (for example, `main`) until you publish a stable tag.

Minimum supported iOS runtime version: **15.6**.

Manual
--------

1. Add `UIView+Toast.h` & `UIView+Toast.m` to your project.
2. `#import "UIView+Toast.h"`
3. Grab yourself a cold 🍺.

Privacy
-----------
Toast does not collect any data. A [privacy manifest](Toast/Resources/PrivacyInfo.xcprivacy) is provided with the library. See [Apple's documentation](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files) for related details.
 
MIT License
-----------
    Copyright (c) 2011-2024 Charles Scalesse.

    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
    OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
    CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
    TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
    SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
