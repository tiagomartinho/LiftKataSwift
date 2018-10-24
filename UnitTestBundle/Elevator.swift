class Elevator {

    typealias Floor = Int

    var currentFloor = 0
    private var destinationFloor: Floor?

    func call(sourceFloor: Floor) {
        destinationFloor = sourceFloor
    }

    func tick() {
        guard let _ = destinationFloor else { return }
        currentFloor += 1
    }
}
