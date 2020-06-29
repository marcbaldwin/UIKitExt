import UIKit

public extension UIScrollView {

    var currentPage: Int {
        return Int(floor(contentOffset.x / frame.size.width))
    }

    func zoomToFit() {
        let xRatio = bounds.size.width / contentSize.width
        let yRatio = bounds.size.height / contentSize.height
        minimumZoomScale = min(xRatio, yRatio)
        zoomScale = minimumZoomScale
    }

    func scrollTo(page: Int, animated: Bool) {
        var rect: CGRect = frame
        rect.origin.x = rect.size.width * CGFloat(page)
        rect.origin.y = 0
        scrollRectToVisible(rect, animated: animated)
    }
}
