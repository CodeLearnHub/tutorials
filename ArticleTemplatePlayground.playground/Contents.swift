// MARK: ArticleName

// MARK: - 1. Section1

// MARK: - 2. Section2

    // MARK:  2.1 Subsection21

        // MARK:  2.1.1 Subsection211

            // MARK:  2.1.1.1 Subsection211

// MARK: - 3. Section3

public enum HeaderLevels: Int {
    case h1 = 36
    case h2 = 30
    case h3 = 24
    case h4 = 18
    case h5 = 12
    case h6 = 6
}

public class Section {
    let currentSection: Int
    let currentLevel: Int
    let subsections: [Section]?
    
    convenience init(level: Int, section: Int) {
        self.init(level: level, section: section, subsection: nil)
    }
    
    init(level: Int, section: Int, subsection: [Section]?) {
        self.currentSection = section
        self.currentLevel = level
        self.subsections = nil
    }
    
    static func <(lhs: Section, rhs: Section) -> Bool {
        if lhs.currentLevel < rhs.currentLevel {
            return true
        } else if lhs.currentLevel > rhs.currentLevel {
            return false
        } else {
            if lhs.currentSection < rhs.currentSection {
                return true
            } else {
                return false
            }
        }
    }
}

let sec1 = Section(level: 1, section: 1)
let sec2 = Section(level: 1, section: 2)
let sec3 = Section(level: 2, section: 1)

print(sec1 < sec2)
print(sec1 < sec3)
print(sec2 < sec3)

public class Article {
    public static let shared = Article()

    private var sections = [Section]() {
        didSet {
            
        }
    }

    private init() {
        self.sections.append(Section(section: 1, level: 1))
    }

    public func addSection(ofLevel level: HeaderLevels) {
        switch level {
        case .h1:
            let appropriateSections = sections.filter({ $0.currentLevel == 1 })
        }
    }
    
    private func sort(sections: [Section]?) {
        guard let sections = sections else {
            return
        }

        sections.sorted(by: <)
    }
}
