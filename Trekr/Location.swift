//
//  Location.swift
//  Trekr
//
//  Created by Rahul Agarwal on 12/05/21.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more:  String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let pictures: [String]?
    let advisory: String
    
    static let example = Location(id: 1, name: "Great Smokey Mountain", country: "United States", description: "A great place to visit", more: "More text here", latitude: 35.6532, longitude: -83.5070, heroPicture: "sokies", pictures: [], advisory: "Neware of the bears!")
}
