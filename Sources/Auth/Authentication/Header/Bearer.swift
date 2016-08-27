import Turnstile

extension Authorization {
    public var bearer: AccessToken? {
        guard let range = header.range(of: "Bearer ") else {
            return nil
        }

        let token = header.substring(from: range.upperBound)
        return AccessToken(string: token)
    }
}
