//
//  FlickrImageCell.swift
//  VirtualTourist
//
//  Created by Sugandha Naolekar on 09/01/16.
//  Copyright © 2016 icode. All rights reserved.
//

import UIKit

class FlickrImageCell: UICollectionViewCell {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var image: UIImage? {
        didSet {
            if image == nil {
                imageView.image = UIImage(named: "placeholder")
            } else {
                imageView.image = image
            }
        }
    }
    
    override var selected: Bool {
        didSet {
            if selected {
                self.alpha = 0.3
            } else {
                self.alpha = 1.0
            }
        }
    }
    
    func setLoading(loading: Bool) {
        spinner.hidden = !loading
        if loading {
            spinner.startAnimating()
        } else {
            spinner.stopAnimating()
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        setLoading(false)
        image = nil
    }
}
