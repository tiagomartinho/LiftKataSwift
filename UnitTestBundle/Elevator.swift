class Elevator {

    typealias Floor = Int

    var currentFloor = 0

    func call(sourceFloor: Floor, direction: Direction) {
        currentFloor = sourceFloor
    }
}
