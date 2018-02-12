import UIKit

public extension UIView {

    public convenience init(backgroundColor: UIColor) {
        self.init()
        self.backgroundColor = backgroundColor
    }

    public func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }

    public func addSubviews(_ views: [UIView]) {
        views.forEach { addSubview($0) }
    }

    public func removeAllSubviews() {
        subviews.forEach { $0.removeFromSuperview() }
    }

    public func removeAllGestureRecognizers() {
        gestureRecognizers?.forEach(removeGestureRecognizer)
    }

    public func removeAllMotionEffects() {
        motionEffects.forEach(removeMotionEffect)
    }

    public func toUIImage() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: bounds, afterScreenUpdates: true)
        let snapshotImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return snapshotImage!
    }
}
