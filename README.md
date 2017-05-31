# DNWKWebViewController

DNWKWebViewController is a simple inline browser for your app.

This library is derived from [SVWebViewController](https://github.com/samvermette/SVWebViewController), which tries to build a webview controller with WKWebView.

![DNWKWebViewController](https://raw.githubusercontent.com/dawnnnnn/DNWKWebViewController/master/Screenshots/screenshot.png)

**DNWKWebViewController features:**

* iPhone and iPad distinct UIs
* full landscape orientation support
* back, forward, stop/refresh and share buttons
* Open in Safari and Chrome UIActivities
* navbar title set to the currently visible web page
* talks with `setNetworkActivityIndicatorVisible`
* propress view support

## Installation

### CocoaPods

```ruby
platform :ios, '8.0'
pod 'DNWKWebViewController'
```

### Manually

* Drag the `DNWKWebViewController/DNWKWebViewController` folder into your project.
* `#import "DNWKWebViewController.h"`

## Usage

(see sample Xcode project in `/Demo`)

Just like any UIViewController, DNWKWebViewController can be pushed into a UINavigationController stack:

```objective-c
DNWKWebViewController *webViewController = [[DNWKWebViewController alloc] initWithAddress:@"http://oopser.com"];
[self.navigationController pushViewController:webViewController animated:YES];
```

### DNWKWebViewControllerActivity

Starting in iOS 6 Apple uses `UIActivity` to let you show additional sharing methods in share sheets. `DNWKWebViewController` comes with "Open in Safari" and "Open in Chrome" activities. You can easily add your own activity by subclassing `DNWKWebViewControllerActivity` which takes care of a few things automatically for you. Have a look at the Safari and Chrome activities for implementation examples. Feel free to send it as a pull request once you're done!

## License

DNWKWebViewController is available under the MIT license. See the LICENSE file for more info.

