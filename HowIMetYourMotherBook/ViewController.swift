//
//  ViewController.swift
//  HowIMetYourMotherBook
//
//  Created by Murat on 23.10.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var chosenActor:player!
    var actor=[player]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barney=player(name: "Barney", realName: "Neil Patrick", image: UIImage(named: "barney")!)
        let ted=player(name: "Ted", realName: "Josh", image: UIImage(named: "ted")!)
        let lily=player(name: "Lily", realName: "Alyson", image: UIImage(named: "lily")!)
        let marshall=player(name: "Marshall", realName: "Jason", image: UIImage(named: "marshall")!)
        let ranjit=player(name: "Ranjit", realName: "Marshall", image: UIImage(named: "ranjit")!)
        let robin=player(name: "Robin", realName: "Cobie", image: UIImage(named: "robin")!)
        
        actor.append(barney)
        actor.append(ted)
        actor.append(lily)
        actor.append(marshall)
        actor.append(ranjit)
        actor.append(robin)
        
        tableView.dataSource=self
        tableView.delegate=self
        
        
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenActor=actor[indexPath.row]
        self.performSegue(withIdentifier: "DetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="DetailsVC"{
            let destinationVC=segue.destination as! DetailsVC
            destinationVC.selectedActor=chosenActor
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=actor[indexPath.row].name
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actor.count
    }


}

