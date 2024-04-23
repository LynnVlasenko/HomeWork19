//
//  Colors.swift
//  HomeWork19
//
//  Created by Алина Власенко on 23.04.2024.
//

import Foundation

struct Colors: Decodable {
    
    let page: Int
    let total: Int
    let data: [Color]
    
    struct Color: Decodable {
        
        let id: Int
        let name: String
        let year: Int
        let color: String
        let pantoneValue: String
        
        private enum CodingKeys: String, CodingKey {
            case id
            case name
            case year
            case color
            case pantoneValue = "pantone_value"
        }
    }
}
