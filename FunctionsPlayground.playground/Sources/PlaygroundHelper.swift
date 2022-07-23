
import Foundation

// MARK: - Headings

// MARK: private
private enum HeaderLevels: Int {
    case h1 = 36
    case h2 = 30
    case h3 = 24
    case h4 = 18
    case h5 = 12
    case h6 = 6
}

private func makeDashes(level: HeaderLevels, forFront: Bool) -> String {
    var line = ""

    for _ in 0 ..< level.rawValue {
        line += "-"
    }

    if forFront {
        line.insert("\n", at: line.startIndex)
    } else {
        line.insert("\n", at: line.endIndex)
    }

    return line
}

private func markHeading(level: HeaderLevels, title: String) {
    print("\(makeDashes(level: level, forFront: true)) \(title) \(makeDashes(level: level, forFront: false))")
}

// MARK: public
public enum HeadingWordings {
    public static let section = "Section"
    public static let subsection = "Subsection"
}

public func markHeading1(numbering: String) {
    markHeading(level: .h1, title: "\(HeadingWordings.section) \(numbering)")
}

public func markHeading2(numbering: String) {
    markHeading(level: .h2, title: "\(HeadingWordings.subsection) \(numbering)")
}

public func markHeading3(numbering: String) {
    markHeading(level: .h3, title: "\(HeadingWordings.subsection) \(numbering)")
}

public func markHeading4(numbering: String) {
    markHeading(level: .h4, title: "\(HeadingWordings.subsection) \(numbering)")
}

public func markHeading5(numbering: String) {
    markHeading(level: .h5, title: "\(HeadingWordings.subsection) \(numbering)")
}

public func markHeading6(numbering: String) {
    markHeading(level: .h6, title: "\(HeadingWordings.subsection) \(numbering)")
}
