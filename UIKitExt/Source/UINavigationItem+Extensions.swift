import UIKit

public extension UINavigationItem {

    public class func createTitleImageView(image: UIImage) -> UIView {
        let imageView = UIImageView(image: image, contentMode: .scaleAspectFit)

        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
        imageView.frame = titleView.bounds
        titleView.addSubview(imageView)

        return titleView
    }
}
