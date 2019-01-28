//
//  BestSellerAPI.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/27/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

final class BookAPI{
static func bookList(completionHandler: @escaping (AppError?,[AllBookList]?) -> Void) {
let BookURL = "https://api.nytimes.com/svc/books/v3/lists.json?api-key=AaVd91RLHB2k2oc8yp5a8gRk8AZpJvpg&list=Combined-Print-and-E-Book-Fiction"
NetworkHelper.shared.performDataTask(endpointURLString:BookURL, httpMethod: "GET", httpBody: nil) { (appError, data, httpResponse) in
        if let appError = appError {
            completionHandler(appError,nil)
            print("here?")
        }
        guard let response = httpResponse,
            (200...299).contains(response.statusCode) else {
                let statusCode = httpResponse?.statusCode ?? -999
                completionHandler(AppError.badStatusCode(String(statusCode)), nil)
                return
        }
        if let data = data {
            do {
                let bookListModel = try JSONDecoder().decode(BookListModel.self, from: data)
                completionHandler(nil, bookListModel.results)
            } catch {
                print("herrrrrr")
                completionHandler(AppError.jsonDecodingError(error),nil)
            }
        }
    }
}
}
