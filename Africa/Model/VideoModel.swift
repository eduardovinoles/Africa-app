//
//  VideoModel.swift
//  Africa
//
//  Created by eduardo vinoles on 5/1/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
