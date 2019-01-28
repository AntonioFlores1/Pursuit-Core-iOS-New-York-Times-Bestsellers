//
//  SettingViewController.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    var allCategories = [Category](){
        didSet {
            DispatchQueue.main.async {
            self.pickerOptions.reloadAllComponents()
          }
       }
    }
    
    func CategoryInfo(){
        CategoryAPI.AllCategories { (appError,allCategory ) in
            if let appError = appError {
                print(appError.errorMessage())
            }
            if let allCategory = allCategory {
                self.allCategories = allCategory
            }
        }
    }
    
    lazy var pickerOptions: UIPickerView = {
        let picker = UIPickerView()
        picker.dataSource = self
        picker.delegate = self
        return picker
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        self.view.addSubview(pickerOptions)
        pickerSetup()
        CategoryInfo()
    }
    
    func pickerSetup() {
        pickerOptions.translatesAutoresizingMaskIntoConstraints = false
        pickerOptions.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        pickerOptions.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        pickerOptions.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        pickerOptions.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }

}
extension SettingViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return allCategories[row].list_name
    }
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        
//    }
}
extension SettingViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allCategories.count
    }
    
    
}
