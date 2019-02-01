//
//  GoogleAPI.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

final class GoogleAPI {
    static func googleCall(isbn:String,completionHandler: @escaping (AppError?,[googleStuff]?) -> Void) {
    let googleURL = "https://www.googleapis.com/books/v1/volumes?q=isbn:\(isbn)&key=AIzaSyAnOeXmH62p6nx8xoDC97w-ATU83cIv6aI"
        print(googleURL)
        NetworkHelper.shared.performDataTask(endpointURLString: googleURL, httpMethod: "GET", httpBody: nil) { (appError, data, httpResponse) in
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
                    let google = try JSONDecoder().decode(googleDetail.self, from: data)
                    completionHandler(nil,google.items)
                } catch {
                  completionHandler(AppError.jsonDecodingError(error),nil)
                }
            }
        }
        
    }
}


