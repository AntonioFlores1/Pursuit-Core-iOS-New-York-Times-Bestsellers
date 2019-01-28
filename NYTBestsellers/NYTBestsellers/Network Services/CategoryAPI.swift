//
//  CategoryAPI.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/27/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

final class CategoryAPI{
static func AllCategories(completionHandler: @escaping (AppError?,[Category]?) -> Void) {
    let category = "https://api.nytimes.com/svc/books/v3/lists/names.json?api-key=\(SecretKey.APIKey)"
NetworkHelper.shared.performDataTask(endpointURLString:category, httpMethod: "GET", httpBody: nil) { (appError, data, httpResponse) in
            if let appError = appError {
                completionHandler(appError,nil)
            }
            guard let response = httpResponse,
                (200...299).contains(response.statusCode) else {
                    let statusCode = httpResponse?.statusCode ?? -999
                    completionHandler(AppError.badStatusCode(String(statusCode)), nil)
                    return
            }
            if let data = data {
                do {
                    let myCate = try JSONDecoder().decode(AllCategory.self, from: data)
                    completionHandler(nil,myCate.results)
                    print("again")
                } catch {
                    completionHandler(AppError.jsonDecodingError(error),nil)
                    print("again2")
                }
            }
        }
    }
    
}

