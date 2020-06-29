
# UIKit Extensions
Convenience initialisers and functions for UIKit

#### UIView

```Swift
// Initialise with a background color
let myView = UIView(backgroundColor: .white)

// Add subviews in a single line
view.addSubviews(subview1, subview2, subview3)

// Easily remove all subviews
view.removeAllSubviews()
```

#### UIViewController

```Swift
// '< Back' becomes '<'
viewController.hideBackButtonText()
```

#### UIStackView

```Swift
// Initialise in a single line
let stackView = UIStackView(.vertical, distribution: .fill, alignment: .fill, spacing = 10)

// Add arranged subviews in a single line
stackView.add(subview1, subview2, subview3)
```

#### UIColor

```Swift
let color = UIColor(r: 122, g: 234, b: 101, a: 0.5)
let color = UIColor(rgb: 122)
let color = UIColor(h: 250, s: 75, b: 30, a: 1)
let color = UIColor.red.with(alpha: 0.5)
```

#### UIAlertController

```Swift
let alert = UIAlertController(.alert, title: "Delete message?", message: "Are you sure?")
  .addAction(title: "Yes") {
    // Delete
  }
  .addCancel(title: "No")
  .present(on: viewController, animated: true)

// Optionally specify a tint color
let redAlert = UIAlertController(.alert, tintColor: .red, title: "Delete message?", message: "Are you sure?")

// Or globally set a tint color
UIAlertController.tintColor = .red
```

#### UIScrollView

```Swift
let currentPage = scrollView.currentPage

scrollView.scrollTo(page: currentPage + 1, animated: true)

scrollView.zoomToFit()
```

#### UITableView

```Swift
tableView.deselectSelectedRow(animated: true)
tableView.scrollToTop(animated: false)
```

#### UIImageView

```Swift
// Initialise with an image and content mode
let imageView = UIImageView(image: myImage, contentMode: .scaleAspectFill)
```

#### UIImage

```Swift
let image: Data = imageView.toPNG()
let image: Data = imageView.toJPEG()
```

#### UIFont

```Swift
// Measure a string constrained to a given width
let size = UIFont.systemFont().sizeOf("Hello world", constrainedToWidth: 100)
```

#### UIEdgeInsets

```Swift
// Equivalent to UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
let insets = UIEdgeInsets(inset: 10)

// Equivalent to UIEdgeInsets(top: 40, left: 10, bottom: 40, right: 10)
let insets = UIEdgeInsets(horizontal: 10, vertical: 40)


```
