import UIKit

public extension UIFont {

    func sizeOf(_ string: String, constrainedToWidth width: CGFloat) -> CGSize {
        return NSString(string: string)
            .boundingRect(
                with: CGSize(width: width, height: .greatestFiniteMagnitude),
                options: .usesLineFragmentOrigin,
                attributes: [NSAttributedString.Key.font : self],
                context: nil
            ).size
    }
}
