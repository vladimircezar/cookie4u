# cookie4u

**Cookie4u** is a simple SPM package that displays a cookie and allows you to refresh the screen to get another cookie.

## Installation

To install **Cookie4u**, simply add the following line to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/vladimircezar/cookie4u.git", from: "1.0.0")
]
```
## Usage

To use **Cookie4u**, import it into your Swift code:

```swift
import Cookie4u
```

Then, create an instance of the `CookieView` class and add it to your view hierarchy:

```swift
let cookieView = CookieView()
view.addSubview(cookieView)
````

To refresh the cookie, simply call the `refresh()` method in the `CookieView` instance:

```swift
cookieView.refresh()
```

## License

**Cookie4u** is available under the MIT license.
