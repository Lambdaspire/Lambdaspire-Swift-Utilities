
import Foundation

public struct AppVersion {
    public var version: String
    public var build: String
    public var date: Date?
    
    public init(version: String, build: String, date: Date? = nil) {
        self.version = version
        self.build = build
        self.date = date
    }
}

public extension AppVersion {
    static var fromBundle: AppVersion {
        .init(
            version: shortVersion(),
            build: buildNumber(),
            date: buildDate())
    }
}

fileprivate func shortVersion() -> String {
    Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
}

fileprivate func buildNumber() -> String {
    Bundle.main.infoDictionary!["CFBundleVersion"] as! String
}

fileprivate func buildDate() -> Date? {
    if
        let infoPath = Bundle.main.path(forResource: "Info.plist", ofType: nil),
        let infoAttr = try? FileManager.default.attributesOfItem(atPath: infoPath),
        let infoDate = infoAttr[.creationDate] as? Date {
        return infoDate
    }
    return nil
}
