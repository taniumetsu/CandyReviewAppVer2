//
//  secondViewController.swift
//  CandyReviweAppVer2
//
//  Created by Tani Umetsu on 11/1/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var candyList = ["Hersheys", "Kit Kat", "Twix", "Crunch Bars"]
    var candyRatings = ["4 stars", "4 stars", "5 stars", "3.5 stars"]
    var categoryOneImagesData = [String]()
    
        
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                {
                    tableView.deselectRow(at: indexPath, animated: true)
                }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue"
                {
                    let s1 = segue.destination as! seventhViewController
                    let imageIndex = tableView2.indexPathForSelectedRow?.row
                    s1.imagePass = categoryOneImagesData[imageIndex!]
                }
            }
    
       
        @IBOutlet weak var tableView2: UITableView!
       
    
    @IBOutlet weak var labelTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwo.text = "Tanis Candy Reviews"
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]

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
