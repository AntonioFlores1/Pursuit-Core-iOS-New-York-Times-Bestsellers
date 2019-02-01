//
//  GoogleModel.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation 

struct googleDetail: Codable {
    let items : [googleStuff]?
}

struct googleStuff: Codable {
    let selfLink: String
    let volumeInfo: volumeDetailInfo
}

struct volumeDetailInfo: Codable {
    let title: String
    let authors: [String]
    let description: String
    let imageLinks: BookImages
}

struct BookImages: Codable{
    let smallThumbnail:String
    let thumbnail: String
}
