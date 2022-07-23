// MARK: ArticleName

// MARK: - 1. Section1

// MARK: - 2. Section2

    // MARK:  2.1 Subsection21

        // MARK:  2.1.1 Subsection211

            // MARK:  2.1.1.1 Subsection211

// MARK: - 3. Section3



let articleSingleton = Article.shared

articleSingleton.nextHeader(ofLevel: .h2)
articleSingleton.nextHeader(ofLevel: .h3)
articleSingleton.nextHeader(ofLevel: .h1)
articleSingleton.nextHeader(ofLevel: .h1)
articleSingleton.nextHeader(ofLevel: .h1)
