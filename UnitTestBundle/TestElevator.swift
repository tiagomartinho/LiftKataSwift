import XCTest

class TestElevator: XCTestCase {
    
    func testNewElevatorStartsOnBaseFloor() {
        let elevator = Elevator()

        XCTAssertEqual(0, elevator.currentFloor)
    }

    func testUserCallsFromFirstFloor() {
        let elevator = Elevator()

        elevator.call(sourceFloor: 1, direction: .down)
        
        XCTAssertEqual(1, elevator.currentFloor)
    }
}

// 1 - ^
// 0 - E

// RED -> GREEN -> REFACTOR
