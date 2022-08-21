import Foundation

extension DateFormatter {
    static let iso8601 = formatter(with: "yyyy-MM-ddTHH:mm:ss.ZZZZ")
    static let yyyyMMddHHmm = formatter(with: "yyyy-MM-dd HH:mm")
    static let yyyyMMdd = formatter(with: "yyyy-MM-dd")
    static let HHmma = formatter(with: "HH:mm a")

    private static func formatter(with format: String) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = .current
        dateFormatter.calendar = Calendar(identifier: .iso8601)
        dateFormatter.dateFormat = format
        return dateFormatter
    }
}