import UIKit

public extension UIColor {

    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }

    public convenience init(rgb: CGFloat, a: CGFloat = 1) {
        self.init(r: rgb, g: rgb, b: rgb, a: a)
    }

    public convenience init(blackWithAlpha alpha: CGFloat) {
        self.init(r: 0, g: 0, b: 0, a: alpha)
    }

    public convenience init(whiteWithAlpha alpha: CGFloat) {
        self.init(r: 255, g: 255, b: 255, a: alpha)
    }

    public convenience init(h: CGFloat, s: CGFloat, b: CGFloat, a: CGFloat = 1) {
        self.init(hue: h/360, saturation: s/100, brightness: b/100, alpha: a)
    }

    public func with(alpha: CGFloat) -> UIColor {
        return withAlphaComponent(alpha)
    }
}
