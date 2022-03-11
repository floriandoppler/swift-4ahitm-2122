//
//  TableViewController.swift
//  covidTest
//
//  Created by Florian Doppler on 08.03.22.
//

import UIKit

class TableViewController: UITableViewController {
    
    var model = Model()
    let queue = DispatchQueue(label: "Covid19")
    let link = "https://edufs.edu.htl-leonding.ac.at/~c.aberger/download/4ahitm/covid.json"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        queue.async {
            self.model = self.download()
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
                DispatchQueue.main.async {}
            }
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return model.coronaData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let title = model.coronaData[indexPath.row].bundesland
        let body = "\(model.coronaData[indexPath.row].fzHosp)/\(model.coronaData[indexPath.row].fzicu)"
        cell.textLabel?.text = title
        cell.detailTextLabel?.text = body
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func download() -> Model {
        let downloadData = Model()
        if let url = URL(string: link) {
            if let data = try? Data(contentsOf: url) {
                print("data: \(data)")
                if let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []) {
                    if let array = jsonObject as? [[String: Any]] {
                        for obj in array {
                            
                            // Bundesland: Title
                            let bundesland = obj["Bundesland"] as! String
                            
                            // Hospitalisierungen & Intensivbetten: Body
                            let fzhosp = obj["FZHosp"] as! Int
                            let fzicu = obj["FZICU"] as! Int
                            
                            // Add downloaded data (bundesland, fzhosp, fzicu)
                            downloadData.add(downloadedData: CoronaData(bundesland: bundesland, fzHosp: fzhosp, fzicu: fzicu))
                        }
                    }
                }
                
                else {
                    print("Failed to download JSON-Data!")
                }
            }
            
            else {
                print("Failed to download JSON-Data!")
            }
        }
        
        return downloadData
    }
}
