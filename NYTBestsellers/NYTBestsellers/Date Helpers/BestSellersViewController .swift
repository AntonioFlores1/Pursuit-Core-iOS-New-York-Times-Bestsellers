//
//  BestSellersViewController.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BestSellersViewController: UIViewController {
    
    let mainView = BestView()
    
    var collectionList = [AllBookList](){
        didSet{
            DispatchQueue.main.async {
                self.mainView.myCollection.reloadData()
                //dump(self.collectionList)
            }
        }
    }
    
    
    var bookInfo = [googleStuff](){
        didSet {
            DispatchQueue.main.async {
                self.mainView.myCollection.reloadData()
            }
        }
    }
    
    var listOfCate = [Category](){
        didSet {
            DispatchQueue.main.async{
                self.mainView.myPicker.reloadAllComponents()
            }
        }
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.view.addSubview(mainView)
        self.view.backgroundColor = .yellow
        categoryAPICall()
        listOfBook()
        //googleDetail()
        //googleAPIInfo(isbn: (collectionList.first?.book_details.first?.primary_isbn13)!, completion: <#(AppError?, googleStuff?) -> Void#>)
        mainView.myCollection.dataSource = self
        mainView.myCollection.delegate = self
        mainView.myPicker.dataSource = self
        mainView.myPicker.delegate = self
    }
    
    func categoryAPICall(){
        CategoryAPI.AllCategories { (appError, books) in
            if let appError = appError {
                print(appError.errorMessage())
            } else if let books = books {
                self.listOfCate = books
            }
        }
    }
    
    func listOfBook(){
        BookAPI.bookList{ (appError, myListOfBooks) in
            if let appError = appError {
                print(appError.errorMessage())
            } else if let bookData = myListOfBooks {
                DispatchQueue.main.async {
                    self.collectionList = bookData
                    //dump(self.collectionList)
                }
            }
        }
    }
    
    func googleAPIInfo(isbn:String, completion:@escaping(AppError?, googleStuff?) -> Void) {
        GoogleAPI.googleCall(isbn: isbn) { (appError, google) in
            if let appError = appError {
                print(appError)
            } else if let data = google?.first {
                //                self.bookInfo = data
                completion(nil, data)
            }
        }
    }
    
    
    
    
}
extension BestSellersViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print([listOffCate[row].display_name].forEach{$0.description})
        return listOfCate[row].list_name
    }
    
    // func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    // }
}

extension BestSellersViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listOfCate.count
        
    }
}

extension BestSellersViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //        guard bookInfo.countvERW  > 0 else { return 0 }
        return collectionList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainView.myCollection.dequeueReusableCell(withReuseIdentifier: "BookCell", for: indexPath) as? BookCollectionViewCell/*,bookInfo.count > 0*/ else {return UICollectionViewCell()}
        var cellInfo = collectionList[indexPath.row]
        cell.myLabel.text = "\(cellInfo.weeks_on_list) Weeks On The Best Sellers List"
        cell.mytext.text = cellInfo.book_details.first?.description
        googleAPIInfo(isbn: (cellInfo.book_details.first?.primary_isbn13)!) { (error, googleData) in
            let url = (googleData?.volumeInfo.imageLinks.smallThumbnail)!
            ImageHelper.fetchImageFromNetwork(urlString: url) { (appError, image) in
                if let image = image {
                    DispatchQueue.main.async {
                        cell.myImage.image = image
                        self.collectionList[indexPath.row].imageLink = url
                        self.collectionList[indexPath.row].googleDescription = googleData?.volumeInfo.description ?? ""
                    }
                } else if let appError = appError {
                    print(appError)
                }
            }
            //        GoogleAPI.googleCall(isbn: (cellInfo.book_details.first?.primary_isbn13)!) { (appError, google) in
            //                        if let appError = appError {
            //                            print(appError)
            //                        } else if let data = google {
            //                            self.bookInfo = data
            //                            let myUrl = self.bookInfo.first!.volumeInfo.imageLinks.smallThumbnail
            //                            ImageHelper.fetchImageFromNetwork(urlString: myUrl) { (appError, image) in
            //                                if let image = image {
            //                                    DispatchQueue.main.async {
            //                                        cell.myImage.image = image
            //                                    }
            //                                } else if let appError = appError {
            //                                    print(appError)
            //                                }
//        }
    }
    return cell
                        }
    
    
//}
}

extension BestSellersViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if let cell = collectionView.cellForItem(at: indexPath) as? BookCollectionViewCell {
        let DetailVC = DetailViewController()
        var cellInfo = collectionList[indexPath.row]
        
        DetailVC.singlBookInfo = cellInfo
        
//        if let image = cell.myImage.image {
//        DetailVC.singlBookInfo.volumeInfo.description = cell.mytext
//        } else {
//
//
//
        navigationController?.pushViewController(DetailVC,animated: true)
//    }
    }
}
