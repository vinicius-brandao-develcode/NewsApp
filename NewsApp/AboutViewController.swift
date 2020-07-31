//
//  AboutViewController.swift
//  NewsApp
//
//  Created by Develcode Mac on 23/07/20.
//  Copyright © 2020 Develcode Mac. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    
    @IBOutlet weak var newsTextView: UITextView!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var titleLabelText: UILabel!
    @IBOutlet weak var authorLabelText: UILabel!
    
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    var cellPassImage: String = ""
    var titlePassString: String = ""
    var textPassString: String = ""
    var authorPassString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsImageView.image  = UIImage(named:cellPassImage)
        titleLabelText.text  = titlePassString
        newsTextView.text    = textPassString
        authorLabelText.text = authorPassString
        
    }
}
