class Elevator {

    typealias Floor = Int

    private (set) var currentFloor = 0
    private var destinationFloor = 0

    private var shouldMoveUp: Bool {
        return destinationFloor - currentFloor > 0
    }

    private var reachedDestination: Bool {
        return destinationFloor == currentFloor
    }

    var areDoorsOpen: Bool {
        return reachedDestination
    }

    func call(sourceFloor: Floor) {
        destinationFloor = sourceFloor
    }

    func tick() {
        guard !reachedDestination else { return }
        move()
    }

    func travel(to floor: Floor) {
        destinationFloor = floor
    }

    private func move() {
        currentFloor += shouldMoveUp ? +1 : -1
    }
}
