class Elevator {

    typealias Floor = Int

    var currentFloor = 0
    private var destinationFloor: Floor?

    func call(sourceFloor: Floor) {
        destinationFloor = sourceFloor
    }

    func tick() {
        guard let destinationFloor = destinationFloor else { return }
        let floorsToDestination = destinationFloor - currentFloor
        let reachedDestination = floorsToDestination != 0
        guard reachedDestination else { return }
        let isMovingUp = floorsToDestination > 0
        currentFloor += isMovingUp ? +1 : -1
    }
}
