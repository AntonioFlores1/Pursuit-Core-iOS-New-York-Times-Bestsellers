//
//  DetailView.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

protocol googleDataDelegate:AnyObject {
    func hopeItWorks()
}

class DetailView: UIView {

    var something: googleStuff!
    
    weak var delegate: googleDataDelegate?
    
    lazy var bookCoverImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage.init(named: "placeholder-image-2")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var BookAuthor: UILabel = {
        let label = UILabel()
    label.text = "Antonio Flores"
    label.backgroundColor = .purple
    label.textAlignment = .center
    label.font = label.font.withSize(40)
        return label
    }()
    
    lazy var bookDescription: UITextView = {
        let text = UITextView()
        text.backgroundColor = .red
        text.text = "Jeffrey"
       return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
      addSubview(bookCoverImage)
      addSubview(bookDescription)
      addSubview(BookAuthor)
        constraintsSetUp()
    }
    
    func constraintsSetUp() {
        addSubview(bookCoverImage)
        addSubview(BookAuthor)
        addSubview(bookDescription)
        bookCoverImage.translatesAutoresizingMaskIntoConstraints = false
        bookCoverImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        bookCoverImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
        bookCoverImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
        bookCoverImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
///////////////////////////////////////////////////////////////////////////////////////////////
        BookAuthor.translatesAutoresizingMaskIntoConstraints = false
        BookAuthor.topAnchor.constraint(equalTo: bookCoverImage.bottomAnchor, constant: 0).isActive = true
        BookAuthor.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        BookAuthor.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
///////////////////////////////////////////////////////////////////////////////////////////////
bookDescription.translatesAutoresizingMaskIntoConstraints = false
        bookDescription.topAnchor.constraint(equalTo: BookAuthor.bottomAnchor, constant: 0).isActive = true
        bookDescription.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        bookDescription.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        bookDescription.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
