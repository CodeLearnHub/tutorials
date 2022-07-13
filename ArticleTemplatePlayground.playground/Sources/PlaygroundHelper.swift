//
//  PlaygroundHelper.swift
//
//
//  Created by  Dimitris Tasios on 11/7/22.
//

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

public func markHeading1(title: String) {
    markHeading(level: .h1, title: title)
}

public func markHeading2(title: String) {
    markHeading(level: .h2, title: title)
}

public func markHeading3(title: String) {
    markHeading(level: .h3, title: title)
}

public func markHeading4(title: String) {
    markHeading(level: .h4, title: title)
}

public func markHeading5(title: String) {
    markHeading(level: .h5, title: title)
}

public func markHeading6(title: String) {
    markHeading(level: .h6, title: title)
}

// ------------------------------------------------------------------------------------------------

public class Section {
    let currentSection: Int
    let currentLevel: Int
    let subsection: Section?
    
    convenience init(section: Int, level: Int) {
        self.init(section: section, level: level, subsection: nil)
    }
    
    init(section: Int, level: Int, subsection: Section?) {
        self.currentSection = section
        self.currentLevel = level
        self.subsection = nil
    }
}

public class Article {
    public static var sections = [Section]()
    
    public init() {
        self.sections.ap
    }
}
