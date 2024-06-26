import Foundation
import Moya

public enum GitRankAPI {
    case signin(code: String)
    case getData
}

extension GitRankAPI: TargetType {
    public var baseURL: URL {
        return URL(string: "http://192.0.0.2:8080/user")!
    }
    public var path: String {
        switch self {
        case .signin:
            return "/signup"
        case .getData:
            return "/my"
        }
    }
    public var method: Moya.Method {
        switch self {
        case .signin:
            return .post
        case .getData:
            return .get
        }
    }
    public var task: Task {
        switch self {
        case let .signin(code):
            return .requestParameters(parameters: [
                "code": code
            ], encoding: JSONEncoding.default)
        case .getData:
            return .requestPlain
        }
    }
    public var headers: [String: String]? {
        return ["Content-Type": "application/json"]
    }
}
