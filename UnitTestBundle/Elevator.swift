class Elevator {

    typealias Floor = Int

    private (set) var currentFloor = 0
    private var destinationFloor = 0

    private var shouldMoveUp: Bool {
        return destinationFloor - currentFloor > 0
    }

    private var reachedDestination: Bool {
        let floorsToDestination = destinationFloor - currentFloor
        return floorsToDestination != 0
    }

    func call(sourceFloor: Floor) {
        destinationFloor = sourceFloor
    }

    func tick() {
        guard reachedDestination else { return }
        move()
    }

    private func move() {
        currentFloor += shouldMoveUp ? +1 : -1
    }
}
