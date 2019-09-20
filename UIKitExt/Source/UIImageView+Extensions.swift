import UIKit

public extension UIImageView {

    convenience init(image: UIImage? = nil, contentMode: UIView.ContentMode) {
        self.init(image: image)
        self.contentMode = contentMode
    }
}
