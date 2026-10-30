@import CloudXSingularConnector;
@import CloudXSingularConnectorPackage;
@import XCTest;

@interface CloudXSingularConnectorObjCTests : XCTestCase
@end

@implementation CloudXSingularConnectorObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXSingularConnectorVersion, @"12.6.0.0");
    XCTAssertNotNil(NSClassFromString(@"CLXSingularConnector"));
}

@end
