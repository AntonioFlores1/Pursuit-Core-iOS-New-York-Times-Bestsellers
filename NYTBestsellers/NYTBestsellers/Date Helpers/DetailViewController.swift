//
//  DetailViewController.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit



class DetailViewController: UIViewController {
    
    var singlBookInfo: AllBookList!
    
//    var bookInfo = [googleStuff](){
//        didSet {
//            DispatchQueue.main.async {
//                self.view.reloadInputViews()
//            }
//        }
//    }
//    init(info:googleStuff){
//        super.init(nibName: nil, bundle: nil)
//        detailView.BookAuthor.text = info.volumeInfo.title
//    }
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    //    func googleDetail(){
//        GoogleAPI.googleCall(isbn: ) { (appError, google) in
//            if let appError = appError {
//                print(appError.errorMessage())
//            } else if let data = google {
//                DispatchQueue.main.async  {
//                    self.bookInfo = data
//                    dump(self.bookInfo)
//                }
//            }
//        }
//    }


    let detailView = DetailView()
    
    override func viewDidLoad(){
         super.viewDidLoad()
    self.view.backgroundColor = .green
    self.view.addSubview(detailView)
detailView.BookAuthor.text = singlBookInfo.book_details.first?.author
detailView.bookDescription.text = singlBookInfo.googleDescription

        
   }

}

