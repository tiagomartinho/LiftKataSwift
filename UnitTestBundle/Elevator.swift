class Elevator {

    typealias Floor = Int

    var currentFloor = 0
    private var destinationFloor: Floor?

    func call(sourceFloor: Floor) {
        destinationFloor = sourceFloor
    }

    func tick() {
        guard let destinationFloor = destinationFloor else { return }
        let reachedDestination = destinationFloor - currentFloor > 0
        guard reachedDestination else { return }
        currentFloor += 1
    }
}
