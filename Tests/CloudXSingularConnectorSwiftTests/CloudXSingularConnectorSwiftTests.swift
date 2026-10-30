import CloudXSingularConnector
import CloudXSingularConnectorPackage
import XCTest

final class CloudXSingularConnectorSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXSingularConnectorVersion, "12.6.0.0")
        XCTAssertNotNil(NSClassFromString("CLXSingularConnector"))
    }
}
