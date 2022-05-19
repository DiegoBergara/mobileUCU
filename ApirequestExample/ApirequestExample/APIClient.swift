import Foundation

class APIClient {
    
    enum Method: String {
        case get = "GET"
        case post = "POST"
        case patch = "PATCH"
        case put = "PUT"
        case delete = "DELETE"
    }
    
    enum SessionPolicy {
        case publicDomain, privateDomain
    }
    
    static let shared = APIClient()
    
    private init() { }
    
    @discardableResult func request(urlString: String,
                                    method: Method = .get,
                                    params: [String: Any] = [:],
                                    sessionPolicy: SessionPolicy = .publicDomain,
                                    onCompletion: @escaping (Result<Data, Error>) -> Void) -> URLSessionDataTask {
        
        let url: URL
        if [.get, .patch].contains(method) {
            // Query params
            var urlComponents = URLComponents(string: urlString)!
            urlComponents.queryItems = params.map { .init(name: $0.key, value: String(describing: $0.value)) }
            url = urlComponents.url!
        } else {
            url = URL(string: urlString)!
        }
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        // Headers
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        if sessionPolicy == .privateDomain {
            request.setValue("", forHTTPHeaderField: "Authorization") // Set Authorization header
        }
        
        // Body
        if [.post, .put, .delete].contains(method) {
            request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: .sortedKeys)
        }
        
        let session = URLSession.shared // Get a URLSession
            .dataTask(with: request) { (data, response, error) in // Create a dataTask
                DispatchQueue.main.async {
                    if let error = error {
                        onCompletion(.failure(error))
                    }
                    if let data = data {
                        try? JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                        onCompletion(.success(data))
                    }
                }
            }
        session.resume() // Start the task
        return session
    }
}
