//
//  GoogleModel.swift
//  NYTBestsellers
//
//  Created by Pursuit on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

//struct googleDetail: Codable {
//    let items : [googleStuff]
//}
//
//struct googleStuff: Codable {
//    "kind": "books#volume",
//    "id": "CGVDDwAAQBAJ",
//    "etag": "AC4mjqT1RVE",
//    let "selfLink": "https://www.googleapis.com/books/v1/volumes/CGVDDwAAQBAJ",
//    
//    
//    "saleInfo": {
//    "country": "US",
//    "saleability": "FOR_SALE",
//    "isEbook": true,
//    "listPrice": {
//    "amount": 12.99,
//    "currencyCode": "USD"
//    },
//    "retailPrice": {
//    "amount": 12.99,
//    "currencyCode": "USD"
//    },
//    "buyLink": "https://play.google.com/store/books/details?id=CGVDDwAAQBAJ&rdid=book-CGVDDwAAQBAJ&rdot=1&source=gbs_api",
//    "offers": [
//    {
//    "finskyOfferType": 1,
//    "listPrice": {
//    "amountInMicros": 12990000,
//    "currencyCode": "USD"
//    },
//    "retailPrice": {
//    "amountInMicros": 12990000,
//    "currencyCode": "USD"
//    },
//    "giftable": true
//    }
//    ]
//    },
//    "accessInfo": {
//    "country": "US",
//    "viewability": "PARTIAL",
//    "embeddable": true,
//    "publicDomain": false,
//    "textToSpeechPermission": "ALLOWED_FOR_ACCESSIBILITY",
//    "epub": {
//    "isAvailable": true,
//    "acsTokenLink": "http://books.google.com/books/download/Where_the_Crawdads_Sing-sample-epub.acsm?id=CGVDDwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
//    },
//    "pdf": {
//    "isAvailable": false
//    },
//    "webReaderLink": "http://play.google.com/books/reader?id=CGVDDwAAQBAJ&hl=&printsec=frontcover&source=gbs_api",
//    "accessViewStatus": "SAMPLE",
//    "quoteSharingAllowed": false
//    },
//    "searchInfo": {
//    "textSnippet": "#1 New York Times Bestseller A Reese Witherspoon x Hello Sunshine Book Club Pick &quot;I can&#39;t even express how much I love this book! I didn&#39;t want this story to end!&quot;--Reese Witherspoon &quot;Painfully beautiful."
//    }
//    }
//    ]
//}
//
//struct volumeInfo: Codable {
//let "volumeInfo": []{
//    let "title": "Where the Crawdads Sing",
//    let "authors": [
//    "Delia Owens"
//    ],
//    "publisher": "Penguin",
//    "publishedDate": "2018-08-14",
//    let "description": "#1 New York Times Bestseller A Reese Witherspoon x Hello Sunshine Book Club Pick \"I can't even express how much I love this book! I didn't want this story to end!\"--Reese Witherspoon \"Painfully beautiful.\"--The New York Times Book Review \"Perfect for fans of Barbara Kingsolver.\"--Bustle For years, rumors of the \"Marsh Girl\" have haunted Barkley Cove, a quiet town on the North Carolina coast. So in late 1969, when handsome Chase Andrews is found dead, the locals immediately suspect Kya Clark, the so-called Marsh Girl. But Kya is not what they say. Sensitive and intelligent, she has survived for years alone in the marsh that she calls home, finding friends in the gulls and lessons in the sand. Then the time comes when she yearns to be touched and loved. When two young men from town become intrigued by her wild beauty, Kya opens herself to a new life--until the unthinkable happens. Perfect for fans of Barbara Kingsolver and Karen Russell, Where the Crawdads Sing is at once an exquisite ode to the natural world, a heartbreaking coming-of-age story, and a surprising tale of possible murder. Owens reminds us that we are forever shaped by the children we once were, and that we are all subject to the beautiful and violent secrets that nature keeps.",
//    "industryIdentifiers": [
//    {
//    "type": "ISBN_13",
//    "identifier": "9780735219113"
//    },
//    {
//    "type": "ISBN_10",
//    "identifier": "0735219117"
//    }
//    ],
//    "readingModes": {
//        "text": true,
//        "image": false
//    },
//    "pageCount": 384,
//    "printType": "BOOK",
//    "categories": [
//    "Fiction"
//    ],
//    "averageRating": 4,
//    "ratingsCount": 26,
//    "maturityRating": "NOT_MATURE",
//    "allowAnonLogging": true,
//    "contentVersion": "1.4.4.0.preview.2",
//    "panelizationSummary": {
//        "containsEpubBubbles": false,
//        "containsImageBubbles": false
//    },
//    let "imageLinks": {
//        let "smallThumbnail": "http://books.google.com/books/content?id=CGVDDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
//        let "thumbnail": "http://books.google.com/books/content?id=CGVDDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
//    },
//    "language": "en",
//    "previewLink": "http://books.google.com/books?id=CGVDDwAAQBAJ&printsec=frontcover&dq=isbn:9780735219113&hl=&cd=1&source=gbs_api",
//    "infoLink": "https://play.google.com/store/books/details?id=CGVDDwAAQBAJ&source=gbs_api",
//    "canonicalVolumeLink": "https://market.android.com/details?id=book-CGVDDwAAQBAJ"
//},
//}
