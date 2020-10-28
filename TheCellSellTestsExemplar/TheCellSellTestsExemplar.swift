import XCTest

class TheCellSellTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // Typical case 
    // • Daytime minutes more than free threshold for both plans
    // • Plan A is cheapest
    // • All output text exactly as shown
    // • Amounts exactly as shown 
    func testTypicalCaseA() {
        
        XCTAssertEqual("""
            Plan A costs 8175
            Plan B costs 8575
            Plan A is cheapest.
            """,
                       compareCosts(day: 300,
                                    evening: 145,
                                    weekend: 50))
        
    }
    
    // Typical case 
    // • Daytime minutes more than free threshold for both plans
    // • Plan B is cheapest 
    func testTypicalCaseB() {
        
        XCTAssertEqual("""
            Plan A costs 5600
            Plan B costs 3940
            Plan B is cheapest.
            """,
                       compareCosts(day: 262,
                                    evening: 90,
                                    weekend: 10))
        
    }
    
    // Typical case 
    // • Daytime minutes more than free threshold for both plans
    // • Plans A and B are same cost 
    func testTypicalCaseC() {
        
        XCTAssertEqual("""
            Plan A costs 7120
            Plan B costs 7120
            Plans A and B are the same price.
            """,
                       compareCosts(day: 296,
                                    evening: 140,
                                    weekend: 6))
        
    }
}
