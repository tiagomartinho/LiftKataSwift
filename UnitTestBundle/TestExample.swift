import XCTest

class TestExample: XCTestCase {

    var sut: SystemUnderTest!

    override func setUp() {
        super.setUp()
        sut = SystemUnderTest()
    }
    
    func testExample() {
        sut.methodToTest()
        XCTAssert(true)
    }
    
    func testPerformanceExample() {
        self.measure {
            sut.methodToTest()
        }
    }
}

class SystemUnderTest {
    func methodToTest() {
    }
}
