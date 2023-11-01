//
//  thirdViewController.swift
//  CandyReviweAppVer2
//
//  Created by Tani Umetsu on 11/1/23.
//

import UIKit

class thirdViewController: UIViewController {
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageTwo.image = UIImage(named: "hersheys")
        labelTwo.text = "Featured Candy: Hersheys"
        textView.text = "A cult classic! The iconic hersheys kisses and bars we grew up with are still as popular as ever! But, they leave a bad taste in my mouth and aren't the best chocolate now that I've grown up. Still though, they're nostalgic goodness!"

        

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
