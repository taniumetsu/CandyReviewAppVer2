//
//  secondViewController.swift
//  CandyReviweAppVer2
//
//  Created by Tani Umetsu on 11/1/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return candyList.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let text = candyList[indexPath.row]
            cell.detailTextLabel?.text = candyRatings[indexPath.row]
            cell.textLabel?.text = text
            return cell
        }
        
       
        @IBOutlet weak var tableView2: UITableView!
        var candyList = ["Hersheys", "Kit Kat", "Twix", "Crunch Bars"]
        var candyRatings = ["4 stars", "4 stars", "5 stars", "3.5 stars"]
    
    @IBOutlet weak var labelTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwo.text = "Tanis Candy Reviews"

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
