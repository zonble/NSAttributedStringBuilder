#if os(iOS)

import UIKit

extension NSAttributedString {

	/// Applies a font to the whole range of the attributed string.
	/// - parameter font: The given font.
	public func font(_ font: UIFont) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.font : font], range: NSMakeRange(0, self.length))
		return mas
	}

	/// Applies a color to the whole range of the attributed string.
	/// - parameter colo	r: The given color.
	public func color(_ color: UIColor) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.foregroundColor : color], range: NSMakeRange(0, self.length))
		return mas
	}

}

#endif
