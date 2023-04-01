import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let error: Bool
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let srno, id, areaName, city: String
    let stats: Stats
    let addedBy, dateTime: String
    let operation: Operation
    let isVerified: IsVerified

    enum CodingKeys: String, CodingKey {
        case srno, id
        case areaName = "area_name"
        case city, stats
        case addedBy = "added_by"
        case dateTime = "date_time"
        case operation
        case isVerified = "is_verified"
    }
}

enum IsVerified: String, Codable {
    case unverified = "unverified"
    case verified = "verified"
}

enum Operation: String, Codable {
    case added = "Added"
    case updated = "Updated"
}

enum Stats: String, Codable {
    case enable = "Enable"
}
