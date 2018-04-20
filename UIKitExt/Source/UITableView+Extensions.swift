import UIKit

public extension UITableView {

    public func deselectSelectedRow(animated: Bool = false) {
        if let selectedIndexPath = indexPathForSelectedRow {
            deselectRow(at: selectedIndexPath, animated: animated)
        }
    }

    public func scrollToTop(animated: Bool = false) {
        scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: animated)
    }
}
