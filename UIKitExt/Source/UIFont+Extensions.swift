import UIKit

public extension UIFont {

    public func sizeOf(_ string: String, constrainedToWidth width: CGFloat) -> CGSize {
        return NSString(string: string)
            .boundingRect(
                with: CGSize(width: width, height: .greatestFiniteMagnitude),
                options: .usesLineFragmentOrigin,
                attributes: [NSAttributedStringKey.font: self],
                context: nil
            ).size
    }
}
