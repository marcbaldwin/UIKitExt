import UIKit

public extension UIImage {

    public func toPNG() -> Data? {
        return UIImagePNGRepresentation(self)
    }

    public func toJPEG(quality: CGFloat = 1) -> Data? {
        return UIImageJPEGRepresentation(self, quality)
    }
}
