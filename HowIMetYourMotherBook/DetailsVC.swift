//
//  DetailsVC.swift
//  HowIMetYourMotherBook
//
//  Created by Murat on 23.10.2021.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedActor:player?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text=selectedActor?.name
        realNameLabel.text=selectedActor?.realName
        imageView.image=selectedActor?.image
        

       
    }
    

   

}
