class SquareHole {
    private let sideLength: Double

    init(_ sideLength: Double) {
        self.sideLength = sideLength
    }

    func canFit(_ square: Square) -> Bool {
        return sideLength >= square.getSideLength()
    }
}

class Square {
    private let sideLength: Double

    init(_ sideLength: Double = 0.0) {
        self.sideLength = sideLength
    }

    func getSideLength() -> Double {
        return sideLength
    }
}

class Circle {
    private let radius: Double

    init(_ radius: Double) {
        self.radius = radius
    }

    func getRadius() -> Double { return radius }
}

class CircleToSquareAdapter: Square {
    private let circle: Circle

    init(_ circle: Circle) {
        self.circle = circle
    }

    override func getSideLength() -> Double {
        return circle.getRadius() * 2
    }
}
