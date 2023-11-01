//
//  sixthViewController.swift
//  CandyReviweAppVer2
//
//  Created by Tani Umetsu on 11/1/23.
//

import UIKit

class sixthViewController: UIViewController {
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var myPic: UIImageView!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var aboutMe: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = "Tanis Candy Reviews"
        myPic.image = UIImage(named: "myPic")
        myName.text = "Tani Umetsu"
        aboutMe.text = "I am a third year Creative Media Student at UHWO! My qualifications are that I love candy and have gone trick or treating 18 times."

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
