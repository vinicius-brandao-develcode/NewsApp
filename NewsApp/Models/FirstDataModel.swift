//
//  FirstDataModel.swift
//  NewsApp
//
//  Created by Develcode Mac on 30/07/20.
//  Copyright © 2020 Develcode Mac. All rights reserved.
//

import Foundation
import UIKit

class NewsModel {
    
    private(set) var author, detail, title: String
    private var imageName: String
    var image: UIImage? {
        return UIImage(named: imageName)
    }
    
    // MARK: - Instance
    
    required init(author: String, detail: String, title: String, imageName: String) {
        self.author = author
        self.detail = detail
        self.title = title
        self.imageName = imageName
        
    }
    
}
