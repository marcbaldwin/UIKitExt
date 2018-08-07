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

    public func registerClassesForCellReuse(_ cellClasses: UITableViewCell.Type...) {
        cellClasses.forEach { registerClassForCellReuse($0) }
    }

    public func registerClassesForCellReuse(_ cellClasses: [UITableViewCell.Type]) {
        cellClasses.forEach { registerClassForCellReuse($0) }
    }

    public func registerClassForCellReuse(_ cellClass: UITableViewCell.Type) {
        register(cellClass, forCellReuseIdentifier: "\(cellClass)")
    }

    public func dequeueReusableCell<T>(class cellClass: T.Type) -> T {
        return dequeueReusableCell(withIdentifier: "\(cellClass)")! as! T
    }

    public func registerClassForHeaderFooterViewReuse(_ aClass: UIView.Type) {
        register(aClass, forHeaderFooterViewReuseIdentifier: "\(aClass)")
    }

    public func dequeueReusableHeaderFooterView(class aClass: UIView.Type) -> UIView? {
        return dequeueReusableHeaderFooterView(withIdentifier: "\(aClass)")
    }
}
