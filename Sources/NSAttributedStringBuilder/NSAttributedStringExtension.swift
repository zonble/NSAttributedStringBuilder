#if os(macOS)
import AppKit
public typealias 🎨 = NSColor
public typealias 字體 = NSFont
#elseif os(iOS)
import UIKit
public typealias 🎨 = UIColor
public typealias 字體 = UIColor
#endif

extension NSAttributedString {

	/// Applies a font to the whole range of the attributed string.
	/// - parameter font: The given font.
	public func 🖐(_ font: 字體) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.font : font], range: NSMakeRange(0, self.length))
		return mas
	}

	/// Applies a color to the whole range of the attributed string.
	/// - parameter color: The given color.
	public func 🖐(_ color: 🎨) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.foregroundColor : color], range: NSMakeRange(0, self.length))
		return mas
	}

	/// Applies a background color to the whole range of the attributed string.
	/// - parameter color: The given color.
	public func 背景🖐(_ color: 🎨) -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.addAttributes([.backgroundColor : color], range: NSMakeRange(0, self.length))
		return mas
	}

	/// Removes font attributes.
	public func 移除字體() -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.removeAttribute(.font, range: NSMakeRange(0, self.length))
		return mas
	}

	/// Removes color attributes.
	public func 移除🎨() -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.removeAttribute(.foregroundColor, range: NSMakeRange(0, self.length))
		return mas
	}

	/// Removes color attributes.
	public func 移除背景色() -> NSAttributedString {
		let mas = NSMutableAttributedString(attributedString: self)
		mas.removeAttribute(.backgroundColor, range: NSMakeRange(0, self.length))
		return mas
	}

}
