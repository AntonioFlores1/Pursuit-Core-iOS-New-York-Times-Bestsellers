//
//  BookListModel.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct BookListModel: Codable {
    let results:[AllBookList]
}
struct AllBookList: Codable {
    let list_name: String
    let display_name: String
    let rank: Int
    let rank_last_week: Int
    let weeks_on_list: Int
    let amazon_product_url: String?
   // let isbns:[ISBNInfo]
    let book_details: [BookDetail]
    var googleDescription: String?
    var imageLink: String?
}
//struct ISBNInfo: Codable {
//       let  isbn10: Int
//       let isbn13: Int
//}
struct BookDetail: Codable {
        let title: String
        let description: String
        let contributor: String
        let author: String
        let price: Double
        let publisher: String
        let primary_isbn13: String
        let primary_isbn10: String
}
