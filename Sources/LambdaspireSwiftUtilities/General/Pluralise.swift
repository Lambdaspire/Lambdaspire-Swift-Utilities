
/// Pluralises a given singular term, assuming a common English pluralisation (i.e. Dog -> Dogs) if applicable.
public func pluralise(for n: Int, _ singular: String) -> String {
    pluralise(for: n, singular: singular, plural: "\(singular)s")
}

/// Pluralises a given singular term as a given plural if applicable.
public func pluralise(for n: Int, singular: String, plural: String) -> String {
    n == 1 ? singular : plural
}
