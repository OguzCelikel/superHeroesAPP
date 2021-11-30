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
    }
    // numburOfRowsInSection -> how many rows
    // cellForRow atIndexPath -> whats inside of these rows
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

