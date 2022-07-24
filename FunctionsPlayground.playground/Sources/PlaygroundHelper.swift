
import Foundation

// MARK: - Headings
private enum HeadingWordings {
    public static let section = "Section"
    public static let subsection = "Subsection"
}

// MARK: private
private func makeDashes(level: Int, forFront: Bool) -> String {
    var line = ""

    for _ in 0 ..< level {
        line += "-"
    }

    if forFront {
        line.insert("\n", at: line.startIndex)
    } else {
        line.insert("\n", at: line.endIndex)
    }

    return line
}

private func markHeading(level: Int, title: String) {
    print("\(makeDashes(level: level, forFront: true)) \(title) \(makeDashes(level: level, forFront: false))")
}

// MARK: public
public func markHeading(numbering: String) {
    let levels = numbering.split(separator: ".")
    if levels.isEmpty {
        return
    }
    
    let sectionTitle = levels.count == 1 ? HeadingWordings.section : HeadingWordings.subsection
    
    markHeading(level: 36 / levels.count, title: "\(sectionTitle) \(numbering)")
}
