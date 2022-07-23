//
//  PlaygroundHelper.swift
//
//
//  Created by  Dimitris Tasios on 11/7/22.
//

import Foundation

private enum HeaderDashes: Int {
    case h1 = 36
    case h2 = 30
    case h3 = 24
    case h4 = 18
    case h5 = 12
    case h6 = 6
}

private enum HeaderLevels: Int {
    case h1 = 1
    case h2 = 2
    case h3 = 3
    case h4 = 4
    case h5 = 5
    case h6 = 6
}

public enum Header {
    case h1
    case h2
    case h3
    case h4
    case h5
    case h6
    
    public var headerValue: (level: Int, dashes: Int) {
        switch self {
        case .h1:
            return (HeaderLevels.h1.rawValue, HeaderDashes.h1.rawValue)
        case .h2:
            return (HeaderLevels.h2.rawValue, HeaderDashes.h2.rawValue)
        case .h3:
            return (HeaderLevels.h3.rawValue, HeaderDashes.h3.rawValue)
        case .h4:
            return (HeaderLevels.h4.rawValue, HeaderDashes.h4.rawValue)
        case .h5:
            return (HeaderLevels.h5.rawValue, HeaderDashes.h5.rawValue)
        case .h6:
            return (HeaderLevels.h6.rawValue, HeaderDashes.h6.rawValue)
        }
    }
    
    public var levelValue: Int {
        return self.headerValue.level
    }
    
    public var dashesValue: Int {
        return self.headerValue.dashes
    }
}

public class Section {
    let section: Int
    let header: Header
    
    init(header: Header, section: Int) {
        self.header = header
        self.section = section
    }

    static func <(lhs: Section, rhs: Section) -> Bool {
        if lhs.header.levelValue < rhs.header.levelValue {
            return true
        } else if lhs.header.levelValue > rhs.header.levelValue {
            return false
        } else {
            if lhs.section < rhs.section {
                return true
            } else {
                return false
            }
        }
    }
}

public class Article {
    public static let shared = Article()

    private var sections = [Section]()

    private init() {}

    // MARK: Only use this!!!
    public func nextHeader(ofLevel level: Header, printHeader: Bool = true) {
        let newSection = self.addHeader(ofLevel: level)
        if printHeader {
            self.printSection(section: newSection)
        }
    }
    
    private func addHeader(ofLevel level: Header) -> Section {
        let appropriateSections = self.sections.filter({ $0.header.levelValue == level.levelValue })
        
        guard let lastSectionOfLevel = appropriateSections.last else {
            let newSection = Section(header: level, section: 1)
            self.sections.append(newSection)
            self.sortSections()
            
            return newSection
        }
        
        let nextSectionOfLevel = lastSectionOfLevel.section + 1
        let newSection = Section(header: level, section: nextSectionOfLevel)
        self.sections.append(newSection)
        
        self.sortSections()
        
        return newSection
    }
    
    private func sortSections() {
        self.sections = sections.sorted(by: <)
    }
    
    private func printSection(section: Section) {
        let dashesBeforeTitle = makeDashes(level: section.header.dashesValue, forFront: true)
        let dashesAfterTitle = makeDashes(level: section.header.dashesValue, forFront: false)
        
        var sectionNumeral = ""
        if section.header.levelValue == 1 {
            sectionNumeral = "Section \(section.section)"
        } else {
            sectionNumeral = "Subsection \(section.header.levelValue).\(section.section)"
        }
        
        print("\(dashesBeforeTitle) \(sectionNumeral) \(dashesAfterTitle)")
    }
    
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
}
