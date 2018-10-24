import XCTest

class TestElevator: XCTestCase {

    let elevator = Elevator()

    func testNewElevatorStartsOnBaseFloor() {
        XCTAssertEqual(0, elevator.currentFloor)
    }

    func testTickWithoutDestinationDoesNothing() {
        elevator.tick()

        XCTAssertEqual(0, elevator.currentFloor)
    }

    func testElevatorTravelsOneFloorAtATime() {
        elevator.call(sourceFloor: 2)

        elevator.tick()

        XCTAssertEqual(1, elevator.currentFloor)
    }

    func testElevatorStopTravelsAfterReachingDestination() {
        elevator.call(sourceFloor: 2)

        for _ in 1...100 { elevator.tick() }

        XCTAssertEqual(2, elevator.currentFloor)
    }

    func testElevatorGoesToUndergroundFloor() {
        elevator.call(sourceFloor: -3)

        for _ in 1...100 { elevator.tick() }

        XCTAssertEqual(-3, elevator.currentFloor)
    }

    func testElevatorDeliversPassengersToRequestedFloor() {
        let destination = 1

        elevator.travel(to: destination)
        elevator.tick()

        XCTAssertEqual(destination, elevator.currentFloor)
    }

    func testElevatorStartsWithDoorsOpen() {
        XCTAssert(elevator.areDoorsOpen)
    }

    func testElevatorClosesDoorsAfterCall() {
        elevator.call(sourceFloor: 1)

        XCTAssertFalse(elevator.areDoorsOpen)
    }

    func testElevatorClosesDoorsBeforeTravel() {
        elevator.travel(to: 1)

        XCTAssertFalse(elevator.areDoorsOpen)
    }

    func testOpenDoorsWhenReachingDestination() {
        elevator.call(sourceFloor: 1)
        elevator.tick()
        
        XCTAssert(elevator.areDoorsOpen)
    }
}
