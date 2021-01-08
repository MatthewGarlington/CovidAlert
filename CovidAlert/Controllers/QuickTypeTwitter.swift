//
//  QuickTypeTwitter.swift
//  CovidAlert
//
//  Created by Matthew Garlington on 1/6/21.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseWelcome { response in
//     if let welcome = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

// MARK: - Welcome
struct Welcome: Codable {
    let statuses: [Status]
    let searchMetadata: SearchMetadata

    enum CodingKeys: String, CodingKey {
        case statuses
        case searchMetadata
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseSearchMetadata { response in
//     if let searchMetadata = response.result.value {
//       ...
//     }
//   }

// MARK: - SearchMetadata
struct SearchMetadata: Codable {
    let completedIn, maxID: Double
    let maxIDStr, nextResults, query, refreshURL: String
    let count, sinceID: Int
    let sinceIDStr: String

    enum CodingKeys: String, CodingKey {
        case completedIn
        case maxID
        case maxIDStr
        case nextResults
        case query
        case refreshURL
        case count
        case sinceID
        case sinceIDStr
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseStatus { response in
//     if let status = response.result.value {
//       ...
//     }
//   }

// MARK: - Status
struct Status: Codable {
    let createdAt: String
    let id: Double
    let idStr, text: String
    let truncated: Bool
    let entities: StatusEntities
    let metadata: Metadata
    let source: String
    let inReplyToStatusID, inReplyToStatusIDStr, inReplyToUserID, inReplyToUserIDStr: JSONNull?
    let inReplyToScreenName: JSONNull?
    let user: User
    let geo, coordinates, place, contributors: JSONNull?
    let retweetedStatus: RetweetedStatus?
    let isQuoteStatus: Bool
    let retweetCount, favoriteCount: Int
    let favorited, retweeted: Bool
    let lang: String
    let possiblySensitive: Bool?

    enum CodingKeys: String, CodingKey {
        case createdAt
        case id
        case idStr
        case text, truncated, entities, metadata, source
        case inReplyToStatusID
        case inReplyToStatusIDStr
        case inReplyToUserID
        case inReplyToUserIDStr
        case inReplyToScreenName
        case user, geo, coordinates, place, contributors
        case retweetedStatus
        case isQuoteStatus
        case retweetCount
        case favoriteCount
        case favorited, retweeted, lang
        case possiblySensitive
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseStatusEntities { response in
//     if let statusEntities = response.result.value {
//       ...
//     }
//   }

// MARK: - StatusEntities
struct StatusEntities: Codable {
    let hashtags, symbols: [JSONAny]
    let userMentions: [UserMention]
    let urls: [URLElement]

    enum CodingKeys: String, CodingKey {
        case hashtags, symbols
        case userMentions
        case urls
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseURLElement { response in
//     if let uRLElement = response.result.value {
//       ...
//     }
//   }

// MARK: - URLElement
struct URLElement: Codable {
    let url, expandedURL: String
    let displayURL: String
    let indices: [Int]

    enum CodingKeys: String, CodingKey {
        case url
        case expandedURL
        case displayURL
        case indices
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseUserMention { response in
//     if let userMention = response.result.value {
//       ...
//     }
//   }

// MARK: - UserMention
struct UserMention: Codable {
    let screenName, name: String
    let id: Double
    let idStr: String
    let indices: [Int]

    enum CodingKeys: String, CodingKey {
        case screenName
        case name, id
        case idStr
        case indices
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMetadata { response in
//     if let metadata = response.result.value {
//       ...
//     }
//   }

// MARK: - Metadata
struct Metadata: Codable {
    let isoLanguageCode, resultType: String

    enum CodingKeys: String, CodingKey {
        case isoLanguageCode
        case resultType
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseRetweetedStatus { response in
//     if let retweetedStatus = response.result.value {
//       ...
//     }
//   }

// MARK: - RetweetedStatus
struct RetweetedStatus: Codable {
    let createdAt: String
    let id: Double
    let idStr, text: String
    let truncated: Bool
    let entities: StatusEntities
    let metadata: Metadata
    let source: String
    let inReplyToStatusID, inReplyToStatusIDStr, inReplyToUserID, inReplyToUserIDStr: JSONNull?
    let inReplyToScreenName: JSONNull?
    let user: User
    let geo, coordinates, place, contributors: JSONNull?
    let isQuoteStatus: Bool
    let retweetCount, favoriteCount: Int
    let favorited, retweeted: Bool
    let possiblySensitive: Bool?
    let lang: String

    enum CodingKeys: String, CodingKey {
        case createdAt
        case id
        case idStr
        case text, truncated, entities, metadata, source
        case inReplyToStatusID
        case inReplyToStatusIDStr
        case inReplyToUserID
        case inReplyToUserIDStr
        case inReplyToScreenName
        case user, geo, coordinates, place, contributors
        case isQuoteStatus
        case retweetCount
        case favoriteCount
        case favorited, retweeted
        case possiblySensitive
        case lang
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseUser { response in
//     if let user = response.result.value {
//       ...
//     }
//   }

// MARK: - User
struct User: Codable {
    let id: Double
    let idStr, name, screenName, location: String
    let userDescription: String
    let url: String?
    let entities: UserEntities
    let protected: Bool
    let followersCount, friendsCount, listedCount: Int
    let createdAt: String
    let favouritesCount: Int
    let utcOffset, timeZone: JSONNull?
    let geoEnabled, verified: Bool
    let statusesCount: Int
    let lang: JSONNull?
    let contributorsEnabled, isTranslator, isTranslationEnabled: Bool
    let profileBackgroundColor: String
    let profileBackgroundImageURL: String?
    let profileBackgroundImageURLHTTPS: String?
    let profileBackgroundTile: Bool
    let profileImageURL: String
    let profileImageURLHTTPS: String
    let profileBannerURL: String?
    let profileLinkColor, profileSidebarBorderColor, profileSidebarFillColor, profileTextColor: String
    let profileUseBackgroundImage, hasExtendedProfile, defaultProfile, defaultProfileImage: Bool
    let following, followRequestSent, notifications: Bool
    let translatorType: String

    enum CodingKeys: String, CodingKey {
        case id
        case idStr
        case name
        case screenName
        case location
        case userDescription
        case url, entities, protected
        case followersCount
        case friendsCount
        case listedCount
        case createdAt
        case favouritesCount
        case utcOffset
        case timeZone
        case geoEnabled
        case verified
        case statusesCount
        case lang
        case contributorsEnabled
        case isTranslator
        case isTranslationEnabled
        case profileBackgroundColor
        case profileBackgroundImageURL
        case profileBackgroundImageURLHTTPS
        case profileBackgroundTile
        case profileImageURL
        case profileImageURLHTTPS
        case profileBannerURL
        case profileLinkColor
        case profileSidebarBorderColor
        case profileSidebarFillColor
        case profileTextColor
        case profileUseBackgroundImage
        case hasExtendedProfile
        case defaultProfile
        case defaultProfileImage
        case following
        case followRequestSent
        case notifications
        case translatorType
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseUserEntities { response in
//     if let userEntities = response.result.value {
//       ...
//     }
//   }

// MARK: - UserEntities
struct UserEntities: Codable {
    let entitiesDescription: Description
    let url: Description?

    enum CodingKeys: String, CodingKey {
        case entitiesDescription
        case url
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseDescription { response in
//     if let description = response.result.value {
//       ...
//     }
//   }

// MARK: - Description
struct Description: Codable {
    let urls: [URLElement]
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Alamofire response handlers

extension DataRequest {
    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
        return DataResponseSerializer { _, response, data, error in
            guard error == nil else { return .failure(error!) }

            guard let data = data else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
            }

            return Result { try newJSONDecoder().decode(T.self, from: data) }
        }
    }

    @discardableResult
    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
    }

    @discardableResult
    func responseWelcome(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Welcome>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
