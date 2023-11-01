//
//  ViewController.swift
//  CandyReviweAppVer2
//
//  Created by Tani Umetsu on 11/1/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var backgroundimage: UIImageView!
    @IBOutlet weak var candyimage: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = "Tanis Candy Reviews"
        navigationItem.title = "Home"
        backgroundimage.image = UIImage(named: "homeimage")
        candyimage.image = UIImage(named: "hersheys")
       
        
    }
}
