//
//  FirstCollectionViewCell.swift
//  NewsApp
//
//  Created by Develcode Mac on 29/07/20.
//  Copyright © 2020 Develcode Mac. All rights reserved.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    
    var index : IndexPath?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabelFC: UILabel!
    @IBOutlet weak var descLabelFC: UILabel!
    @IBOutlet weak var authorLabelFC: UILabel!
}
