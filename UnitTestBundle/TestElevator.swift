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
}
