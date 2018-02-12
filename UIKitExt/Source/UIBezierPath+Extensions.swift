import UIKit

public extension UIBezierPath {

    public convenience init(points: [CGPoint]) {
        self.init()
        if let first = points.first {
            move(to: first)
            for point in points[1 ..< points.count] {
                addLine(to: point)
            }
        }
    }

    public convenience init(circleCenter: CGPoint, radius: CGFloat) {
        self.init(
            arcCenter: circleCenter,
            radius: radius,
            startAngle: 0,
            endAngle: .pi * 2,
            clockwise: true
        )
    }
}
