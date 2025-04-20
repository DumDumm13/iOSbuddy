import Foundation

struct GenerateRequest: Codable {
    let prompt: String
    let max_new_tokens: Int
} 