import UIKit

public extension UILabel {

    convenience init(
        font: UIFont? = nil,
        color: UIColor? = nil,
        alignment: NSTextAlignment = .center,
        baselineAdjustment: UIBaselineAdjustment = .alignCenters,
        lines: Int = 1,
        adjustToWidth: Bool = false,
        text: String? = nil
    ) {
        self.init(frame: .zero)
        self.font = font ?? self.font
        self.textColor = color
        self.textAlignment = alignment
        self.baselineAdjustment = baselineAdjustment
        self.numberOfLines = lines
        self.text = text
        self.adjustsFontSizeToFitWidth = adjustToWidth
    }

    func resize(shouldExpandHorizontally expand: Bool = true) {
        if let text = text {
            let maxHeight = bounds.height
            let maxWidth =  expand ? CGFloat.greatestFiniteMagnitude : bounds.size.width
            let initialFontSize = CGFloat(100)
            var fontSize = initialFontSize / 2
            for i in 0...5 {
                font = font.withSize(fontSize)
                let size = font.sizeOf(text, constrainedToWidth: maxWidth)
                fontSize += ((size.height > maxHeight || size.width > maxWidth) ? -1 : 1) * initialFontSize / CGFloat(pow(2, Float(i+2)))
            }
        }
    }
}
