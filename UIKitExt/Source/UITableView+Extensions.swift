import UIKit

public extension UITableView {

    func deselectSelectedRow(animated: Bool = false) {
        if let selectedIndexPath = indexPathForSelectedRow {
            deselectRow(at: selectedIndexPath, animated: animated)
        }
    }

    func scrollToTop(animated: Bool = false) {
        guard numberOfSections > 0 && numberOfRows(inSection: 0) > 0 else { return }
        scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: animated)
    }

    func registerClassesForCellReuse(_ cellClasses: UITableViewCell.Type...) {
        cellClasses.forEach { registerClassForCellReuse($0) }
    }

    func registerClassesForCellReuse(_ cellClasses: [UITableViewCell.Type]) {
        cellClasses.forEach { registerClassForCellReuse($0) }
    }

    func registerClassForCellReuse(_ cellClass: UITableViewCell.Type) {
        register(cellClass, forCellReuseIdentifier: "\(cellClass)")
    }

    func dequeueReusableCell<T>(class cellClass: T.Type) -> T {
        return dequeueReusableCell(withIdentifier: "\(cellClass)")! as! T
    }

    func registerClassForHeaderFooterViewReuse(_ aClass: UIView.Type) {
        register(aClass, forHeaderFooterViewReuseIdentifier: "\(aClass)")
    }

    func dequeueReusableHeaderFooterView(class aClass: UIView.Type) -> UIView? {
        return dequeueReusableHeaderFooterView(withIdentifier: "\(aClass)")
    }
}
