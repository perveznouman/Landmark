//
//  Landmark.swift
//  Landmark
//
//  Created by Nouman Pervez on 16/08/23.
//

import Foundation

struct Landmark: Decodable, Identifiable {
    
    var id: Int
    var name: String
    var category: String
    var city: String
    var state: String
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
    var imageName: String
    var description: String
    var coordinates: Coordinates

}

struct Coordinates: Decodable {
    var longitude: Double
    var latitude: Double
}

