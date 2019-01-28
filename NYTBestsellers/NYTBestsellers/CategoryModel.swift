//
//  CategoryModel.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/27/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct AllCategory: Codable {
    let results: [Category]?
}

struct Category: Codable {
let list_name: String
let display_name: String
let list_name_encoded: String
let oldest_published_date: String
let newest_published_date: String
let updated: String
}
