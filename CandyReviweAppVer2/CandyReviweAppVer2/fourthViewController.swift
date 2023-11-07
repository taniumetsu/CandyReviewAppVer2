//
//  fourthViewController.swift
//  CandyReviweAppVer2
//
//  Created by Tani Umetsu on 11/2/23.q
//

import UIKit

class fourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var candyList = ["Strawberry Hard Candy", "War Heads", "Lolipops", "Jolly Ranchers"]
    var candyRatings = ["4.5 stars", "4 stars", "3 stars", "3.5 stars"]
    var categoryTwoImagesData = [String]()
    
        
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
                    let s1 = segue.destination as! eighthViewController
                    let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryTwoImagesData[imageIndex!]
                }
            }
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryTwoImagesData = dict!.object(forKey:"CategoryTwoImages") as! [String]

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
