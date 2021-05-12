//
//  Tips.swift
//  Trekr
//
//  Created by Rahul Agarwal on 12/05/21.
//

import Foundation

struct Tips: Decodable {
    let text: String
    let children: [Tips]?
}
