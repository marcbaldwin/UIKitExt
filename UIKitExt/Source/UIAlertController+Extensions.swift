import UIKit

public extension UIAlertController {

    static var tintColor: UIColor?

    convenience init(_ preferredStyle: UIAlertController.Style, tintColor: UIColor? = nil, title: String? = nil, message: String? = nil) {
        self.init(title: title, message: message, preferredStyle: preferredStyle)
        if let tintColor = tintColor {
            view.tintColor = tintColor
        }
        else if let tintColor = UIAlertController.tintColor {
            view.tintColor = tintColor
        }
    }

    @discardableResult
    func addAction(title: String? = nil, style: UIAlertAction.Style = .default, action: (() -> Void)? = nil) -> Self {
        addAction(UIAlertAction(title: title, style: style, handler: { _ in action?() }))
        return self
    }

    @discardableResult
    func addTextField(_ handler: @escaping (UITextField) -> Void) -> Self {
        self.addTextField(configurationHandler: handler)
        return self
    }

    @discardableResult
    func addCancel(title: String, handler: (() -> Void)? = nil) -> Self {
        addAction(UIAlertAction(title: title, style: .cancel, handler: { _ in handler?() }))
        return self
    }

    class func editTextAlert(
        title: String,
        initialText: String?,
        hint: String? = nil,
        confirmText: String,
        cancelText: String,
        customizer: ((UITextField) -> Void)? = nil,
        action: @escaping (String) -> Void,
        onCancel: (() -> Void)? = nil
    ) -> UIAlertController {
        var weakTextField: UITextField?
        return UIAlertController(.alert, title: title)
            .addTextField { textField in
                weakTextField = textField
                textField.clearButtonMode = .always
                textField.autocapitalizationType = .words
                textField.placeholder = hint
                textField.text = initialText
                customizer?(textField)
            }
            .addAction(title: confirmText) {
                if let text = weakTextField?.text {
                    action(text)
                } else {
                    onCancel?()
                }
            }
            .addCancel(title: cancelText, handler: onCancel)
    }
}

