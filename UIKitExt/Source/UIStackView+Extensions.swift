import UIKit

public extension UIStackView {

    convenience init(
        _ axis: NSLayoutConstraint.Axis,
        distribution: UIStackView.Distribution = .fill,
        alignment: UIStackView.Alignment = .fill,
        spacing: CGFloat = 0,
        views: UIView...) {
        self.init(frame: .zero)
        self.axis = axis
        self.distribution = distribution
        self.alignment = alignment
        self.spacing = spacing
        add(views)
    }

    @discardableResult
    func add(_ arrangedSubviews: UIView...) -> UIStackView {
        add(arrangedSubviews)
        return self
    }

    @discardableResult
    func add(_ arrangedSubviews: [UIView]) -> UIStackView {
        for view in arrangedSubviews {
            addArrangedSubview(view)
        }
        return self
    }
}
