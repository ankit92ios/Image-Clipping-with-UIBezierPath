

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface demoTests : XCTestCase

@end

@implementation demoTests

- (void)setUp {
    [super setUp];
   
}

- (void)tearDown {
    
    [super tearDown];
}

- (void)testExample {
    
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    
    [self measureBlock:^{
       
    }];
}

@end
