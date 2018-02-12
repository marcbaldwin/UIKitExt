import UIKit

public extension UIViewController {

    public func enableInteractivePop() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

    public func disableInteractivePop() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }

    public func hideBackButtonText() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    @discardableResult
    public func present(on viewController: UIViewController, animated: Bool = true) -> Self {
        viewController.present(self, animated: animated, completion: nil)
        return self
    }

}
