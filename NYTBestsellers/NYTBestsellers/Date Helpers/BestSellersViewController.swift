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
    
    var listOffCate = [Category]() {
        didSet {
            DispatchQueue.main.async {
                self.mainView.myPicker.reloadAllComponents()
            }
        }
    }

    var collectionList = [AllBookList](){
        didSet{
            DispatchQueue.main.async {
                self.mainView.myCollection.reloadData()
                dump(self.collectionList)
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
                    dump(self.collectionList)
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mainView)
        self.view.backgroundColor = .yellow
        categoryAPICall()
        listOfBook()
        mainView.myCollection.dataSource = self
        mainView.myCollection.delegate = self
        mainView.myPicker.dataSource = self
        mainView.myPicker.delegate = self
    }
    
func categoryAPICall() {
        CategoryAPI.AllCategories { (appError, books) in
            if let appError = appError {
                print(appError.errorMessage())
            } else if let books = books {
                self.listOffCate = books
            }
        }
    }
    
    
}
extension BestSellersViewController: UICollectionViewDelegate {
    
}

extension BestSellersViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print([listOffCate[row].display_name].forEach{$0.description})
        return listOffCate[row].list_name
    }
    
    // func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    // }
}

extension BestSellersViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listOffCate.count
        
    }
}

extension BestSellersViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 9
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainView.myCollection.dequeueReusableCell(withReuseIdentifier: "BookCell", for: indexPath) as? BookCollectionViewCell else {return UICollectionViewCell()}
        //let cellInfo = collectionList[indexPath.row]
        //        cell.myLabel.text = "\(cellInfo.weeks_on_list) On The Best Sellers List "
        //        cell.mytext.text = cellInfo.book_details[indexPath.row].description
        return cell
    }
}
