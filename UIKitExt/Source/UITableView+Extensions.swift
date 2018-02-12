import UIKit

public extension UITableView {

    public func deselectSelectedRow() {
        if let selectedIndexPath = indexPathForSelectedRow {
            deselectRow(at: selectedIndexPath, animated: false)
        }
    }
}
