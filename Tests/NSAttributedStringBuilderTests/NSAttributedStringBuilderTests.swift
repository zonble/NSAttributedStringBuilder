import XCTest
@testable import NSAttributedStringBuilder

final class NSAttributedStringBuilderTests: XCTestCase {
    func testExample() {
		#if os(macOS)
		let x = AttributedString {
			AttributedString("Hi!")
				.font(NSFont.systemFont(ofSize: 30))
			AttributedString("There!")
				.font(NSFont.systemFont(ofSize: 20))
		}
		#else
		let x = AttributedString {
			AttributedString("Hi!")
				.font(UIFont.systemFont(ofSize: 30))
			AttributedString("There!")
				.font(UIFont.systemFont(ofSize: 20))
		}
		#endif

		XCTAssertTrue(x.string == "Hi!There!")

		#if os(macOS)
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
		#else
		XCTAssertTrue(x.attribute(.font, at: 0, effectiveRange: nil) is UIFont)
		if let font1 = x.attribute(.font, at: 0, effectiveRange: nil) as? UIFont {
			XCTAssertTrue(font1.pointSize == 30)
		} else {
			XCTFail()
		}
		if let font2 = x.attribute(.font, at: 4, effectiveRange: nil) as? UIFont {
			XCTAssertTrue(font2.pointSize == 20)
		} else {
			XCTFail()
		}
		#endif
	}

    static var allTests = [
        ("testExample", testExample),
    ]
}
