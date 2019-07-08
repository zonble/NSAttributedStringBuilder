#if os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif

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
	public convenience init(@NSAttributedStringBuilder _ builder: ()-> NSAttributedString) {
		self.init(attributedString:builder())
	}
}
