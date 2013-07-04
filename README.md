ILBarButtonItem
===============
Custom image or text for a UIBarButtonItem without the default bordered style.

### Version 1.1

Overview
--------
Used instead of `UIBarButtonItem` when you don't want the default bordered style that Apple applies to it. Creates a *cleaner* bar button item, or simply leaves more room for creative freedom!

**Default buttons:**  
![Default appearance](http://isaacl.net/images/libraries/ILBarButtonItem/1.png)

**Selected image button:**  
![Selected appearance](http://isaacl.net/images/libraries/ILBarButtonItem/2.png)

**Selected text button:**  
![Selected appearance](http://isaacl.net/images/libraries/ILBarButtonItem/3.png)

How to use
----------
A demo project `ILBarButtonItemDemo` is included to show how `ILBarButtonItem` can be integrated into a project.

1. Copy the following 3 files into your Xcode project. Be sure to check "Copy items into destination's group folder".
    - `ILBarButtonItem.h`
    - `ILBarButtonItem.m`
2. Add the line `#include "ILBarButtonItem.h"` to the `YourAppName-Prefix.pch` file in the "Supporting Files" group. This way, `ILBarButtonItem` will be available to every file in your project without needing to keep adding a `#include`.
3. In the `-viewDidLoad` method of the view controller you want the bar button item to show in, put in the following code. Note: your images should have dimensions below 44x44px for the best results.

        self.navigationItem.leftBarButtonItem =
            [ILBarButtonItem barItemWithImage:[UIImage imageNamed:@"gear.png"]
                                selectedImage:[UIImage imageNamed:@"gearSelected.png"]
                                       target:self
                                       action:@selector(leftTapped:)];
        
        self.navigationItem.rightBarButtonItem =
            [ILBarButtonItem barItemWithTitle:@"Start"
                                   themeColor:[UIColor whiteColor]
                                       target:self
                                       action:@selector(rightTapped:)];

4. At runtime, you can change the images on the button by directly editing the `customImage` and `customSelectedImage` properties of an instance of an `ILBarButtonItem`.

        ILBarButtonItem *rightBtn = (ILBarButtonItem *)self.navigationItem.rightBarButtonItem;
        rightBtn.customImage = [UIImage imageNamed:@"<default image to change to>.png"];
        rightBtn.customSelectedImage = [UIImage imageNamed:@"<selected image to change to>.png"];

5. The tapped action can also be changed in a similar fashion by editing the `customAction` property.

Requirements
------------
- ARC
- iOS 5.0 or later

Contact
-------
Isaac Lim  
[isaacl.net](http://isaacl.net)

Credits
-------
- [Glyphish Pro](http://www.glyphish.com) icons

Version History
---------------
**1.0**
- First publish to Github  
**1.1**
- Added iOS 7 style text buttons


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
