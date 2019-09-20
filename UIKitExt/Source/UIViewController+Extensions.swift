import UIKit

public extension UIViewController {

    func enableInteractivePop() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

    func disableInteractivePop() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }

    func hideBackButtonText() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    @discardableResult
    func present(on viewController: UIViewController, animated: Bool = true) -> Self {
        viewController.present(self, animated: animated, completion: nil)
        return self
    }

}
