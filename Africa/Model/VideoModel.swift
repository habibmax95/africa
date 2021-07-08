//
//  VideoModel.swift
//  Africa
//
//  Created by Office on 09/07/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        return "video-\(id)"
    }
}
