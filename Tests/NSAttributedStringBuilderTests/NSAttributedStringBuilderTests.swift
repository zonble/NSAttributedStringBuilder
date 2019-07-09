import XCTest
@testable import NSAttributedStringBuilder

final class NSAttributedStringBuilderTests: XCTestCase {
    func testExample() {
		let x = 文字 {
			文字("Hi!")
				.套用(系統字體(30))
				.套用(顏色.紅)
			文字("There!")
				.套用(系統字體(20))
				.套用(顏色.綠)
		}


		XCTAssertTrue(x.string == "Hi!There!")

		XCTAssertTrue(x.attribute(.font, at: 0, effectiveRange: nil) is NSFont)
		if let font1 = x.attribute(.font, at: 0, effectiveRange: nil) as? NSFont {
			XCTAssertTrue(font1.pointSize == 30)
		} else {
			XCTFail()
		}
		if let font2 = x.attribute(.font, at: 4, effectiveRange: nil) as? NSFont {
			XCTAssertTrue(font2.pointSize == 20)
		} else {
			XCTFail()
		}
	}

    static var allTests = [
        ("testExample", testExample),
    ]
}
