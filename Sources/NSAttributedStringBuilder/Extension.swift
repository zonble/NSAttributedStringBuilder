#if os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif

extension NSAttributedString {
	/// Removes font attributes.
	public func removeFont() -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.removeAttribute(.font, range: NSMakeRange(0, self.length))
		return mas
	}

	/// Removes color attributes.
	public func removeColor() -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.removeAttribute(.foregroundColor, range: NSMakeRange(0, self.length))
		return mas
	}

}
