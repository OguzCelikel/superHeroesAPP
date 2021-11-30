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
    var superHeroesNames = [String]() //empty s
    var superHeroesPhotos = [String]()
    var selectedName = ""
    var selectedPhoto = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView1.delegate = self
        tableView1.dataSource = self
        
        superHeroesNames.append("SpiderMan")
        superHeroesNames.append("CaptainAmerica")
        superHeroesNames.append("IronMan")
        superHeroesNames.append("HawkEye")
        superHeroesNames.append("Batman")
        
        //UIImageView.image =
        //var superHeroesPhotos = [UIImage]()
        //superHeroesPhotos.append(UIImage(named: "batman")!)
        superHeroesPhotos.append("SpiderMan")
        superHeroesPhotos.append("CaptainAmerica")
        superHeroesPhotos.append("IronMan")
        superHeroesPhotos.append("Hawkeye")
        superHeroesPhotos.append("Batman")
    }// viewDidLoad finished
    
    // numburOfRowsInSection -> how many rows
    // cellForRow atIndexPath -> whats inside of these rows
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 5 // five times
        return superHeroesNames.count // array length
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // view of inside
        let cell = UITableViewCell()
        //indexPath like for i
        cell.textLabel?.text = superHeroesNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // editingStyle insert,none
        if editingStyle == .delete{
            superHeroesPhotos.remove(at: indexPath.row)
            superHeroesNames.remove(at: indexPath.row)
            tableView1.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = superHeroesNames[indexPath.row]
        selectedPhoto = superHeroesPhotos[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedHeroName = selectedName
            destinationVC.selectedHeroPhoto = selectedPhoto
        }
    }
    
}

