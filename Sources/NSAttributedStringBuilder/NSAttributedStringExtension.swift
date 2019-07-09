#if os(macOS)
import AppKit
public typealias 🎨 = NSColor
public typealias 顏色 = NSColor
public typealias 字體 = NSFont
#elseif os(iOS)
import UIKit
public typealias 🎨 = UIColor
public typealias 顏色 = UIColor
public typealias 字體 = UIColor
#endif

extension 📄 {

	private var mutableInstance: NSMutableAttributedString {
		if let instance = self as? NSMutableAttributedString {
			return instance
		}
		return NSMutableAttributedString(attributedString: self)
	}

	/// Applies a font to the whole range of the attributed string.
	/// - parameter font: The given font.
	public func 🖐(_ font: 字體) -> 📄 {
		let mas = mutableInstance
		mas.addAttributes([.font : font], range: NSMakeRange(0, self.length))
		return mas
	}

	/// Applies a color to the whole range of the attributed string.
	/// - parameter color: The given color.
	public func 🖐(_ color: 🎨) -> 📄 {
		let mas = mutableInstance
		mas.addAttributes([.foregroundColor : color], range: NSMakeRange(0, self.length))
		return mas
	}

	/// Applies a background color to the whole range of the attributed string.
	/// - parameter color: The given color.
	public func 🖐(背景 color: 🎨) -> 📄 {
		let mas = mutableInstance
		mas.addAttributes([.backgroundColor : color], range: NSMakeRange(0, self.length))
		return mas
	}

	/// Removes font attributes.
	public func 🤞字體() -> 📄 {
		let mas = mutableInstance
		mas.removeAttribute(.font, range: NSMakeRange(0, self.length))
		return mas
	}

	/// Removes color attributes.
	public func 🤞🎨() -> 📄 {
		let mas = mutableInstance
		mas.removeAttribute(.foregroundColor, range: NSMakeRange(0, self.length))
		return mas
	}

	/// Removes color attributes.
	public func 🤞背景🎨() -> 📄 {
		let mas = mutableInstance
		mas.removeAttribute(.backgroundColor, range: NSMakeRange(0, self.length))
		return mas
	}

}
