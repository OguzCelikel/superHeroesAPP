//
//  ViewController.swift
//  superHeroes
//
//  Created by Ömer Oğuz Çelikel on 30.11.2021.
//

import UIKit

// UITableViewDelegate -> Table view management
// UITableViewDataSource -> Our Data Source will give error. To solve it write functions (numburOfRowsInSection, cellForRow)
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView1: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView1.delegate = self
        tableView1.dataSource = self
        
        var superHeroesNames = [String]() //empty s
        superHeroesNames.append("Spiderman")
        superHeroesNames.append("CaptainAmerica")
        superHeroesNames.append("IronMan")
        superHeroesNames.append("HawkEye")
        superHeroesNames.append("Batman")
        
        //UIImageView.image =
        var superHeroesPhotes = [UIImage]()
        superHeroesPhotos.append(UIImage(named: "batman")!)
    }
    // numburOfRowsInSection -> how many rows
    // cellForRow atIndexPath -> whats inside of these rows
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 // ten times
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // view of inside
        let cell = UITableViewCell()
        cell.textLabel?.text = "Test"
        return cell
    }
}

