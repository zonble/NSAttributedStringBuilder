#if os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif

typealias 📖 = NSAttributedString

@_functionBuilder
public class NSAttributedStringBuilder {
	static func buildBlock(_ components: NSAttributedString...) -> NSAttributedString {
		let mas = NSMutableAttributedString(string: "")
		for component in components {
			mas.append(component)
		}
		return mas
	}
}

extension NSAttributedString {

	/// A convenience method to create a new instance with a string.
	/// - parameter string: The string object contained in the attributed string.
	public convenience init(_ string: String) {
		self.init(string: string)
	}

	/// A convenience method to create a new instance with a builder block, which
	/// builds an array of NSAttributedString objects.
	/// - parameter builder: The builder. See also `NSAttributedStringBuilder`.
	public convenience init(@NSAttributedStringBuilder _ builder: ()-> NSAttributedString) {
		self.init(attributedString:builder())
	}
}
