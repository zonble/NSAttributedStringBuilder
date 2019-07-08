#if os(macOS)

import AppKit

extension NSAttributedString {

	public func font(_ font: NSFont) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.font : font], range: NSMakeRange(0, self.length))
		return mas
	}

	public func color(_ color: NSColor) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.foregroundColor : color], range: NSMakeRange(0, self.length))
		return mas
	}

}

#endif
