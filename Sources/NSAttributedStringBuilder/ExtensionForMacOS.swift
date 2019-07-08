#if os(macOS)

import AppKit

extension NSAttributedString {

	/// Applies a font to the whole range of the attributed string.
	/// - parameter font: The given font.
	public func font(_ font: NSFont) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.font : font], range: NSMakeRange(0, self.length))
		return mas
	}

	/// Applies a color to the whole range of the attributed string.
	/// - parameter color: The given color.
	public func color(_ color: NSColor) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.foregroundColor : color], range: NSMakeRange(0, self.length))
		return mas
	}

}

#endif
