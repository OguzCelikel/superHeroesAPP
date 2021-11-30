//
//  DetailsViewController.swift
//  superHeroes
//
//  Created by Ömer Oğuz Çelikel on 1.12.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var selectedHeroName = ""
    var selectedHeroPhoto = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: selectedHeroPhoto)
        label.text = selectedHeroName
        // Do any additional setup after loading the view.
    }
    

}
