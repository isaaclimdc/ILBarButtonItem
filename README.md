ILBarButtonItem
===============

Custom image for a UIBarButtonItem without the default bordered style.

Overview
--------
Used instead of UIBarButtonItem when you don't want the default bordered style that Apple applies to it. Creates a *cleaner*-looking bar button item, or simply leaves more room for creative freedom!

<center>
![Default appearance](http://isaacl.net/images/libraries/ILBarButtonItem1.png)
![Selected appearance](http://isaacl.net/images/libraries/ILBarButtonItem2.png)
</center>

How to use
----------
1. Copy `ILBarButtonItem.h` and `ILBarButtonItem.m` into your Xcode project. Be sure to check "Copy items into destination's group folder".
2. In `viewDidLoad:` method of the view controller in which you want to display the bar button item, put in the following code. Note: your images should have dimensions below 44x44px for the best results.
```objective-c
//Left bar button item
self.navigationItem.leftBarButtonItem =
    [ILBarButtonItem barItemWithImage:[UIImage imageNamed:@"<default image here>.png"]
                        selectedImage:[UIImage imageNamed:@"<selected image here>.png"]
                               target:<target here (e.g. self)>
                               action:@selector(<tapped method call here>
```

Requirements
------------
- ARC
- iOS 5.0 or later

Contact
-------
Isaac Lim  
[@isaaclimdc](http://twitter.com/isaaclimdc)

License
-------
 ILBarButtonItem is distributed under the terms and conditions of the MIT license.

 Copyright (c) 2013 isaacl.net. All rights reserved.

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
