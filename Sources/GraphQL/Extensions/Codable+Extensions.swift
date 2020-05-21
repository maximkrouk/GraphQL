import Foundation

public class AnyEncodable : Encodable {
    private let encodable: Encodable
    
    public init(_ encodable: Encodable) {
        self.encodable = encodable
    }
    
    public func encode(to encoder: Encoder) throws {
        return try self.encodable.encode(to: encoder)
    }
}

// NOT TESTED, BUT SHOULD WORK :)

public protocol SelfEncodableError: Error {
    func encode() -> String
}

extension SelfEncodableError {
    var encoded: String { encode() }
}
