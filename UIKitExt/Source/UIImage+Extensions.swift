import UIKit

public extension UIImage {

    public func toPNG() -> Data? {
        return self.pngData()
    }

    public func toJPEG(quality: CGFloat = 1) -> Data? {
        return self.jpegData(compressionQuality: quality)
    }
}
