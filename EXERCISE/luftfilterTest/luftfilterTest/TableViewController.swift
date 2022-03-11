//
//  TableViewController.swift
//  luftfilterTest
//
//  Created by Florian Doppler on 10.03.22.
//

import UIKit

class TableViewController: UITableViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.airFilters.append(AirFilter(produktbezeichnung: "Phüllüps", leistung: 32.0, raumNummer: "k03", betriebsstunden: 640))
        model.airFilters.append(AirFilter(produktbezeichnung: "Chiaomi", leistung: 40.0, raumNummer: "253-a", betriebsstunden: 720))
        model.airFilters.append(AirFilter(produktbezeichnung: "Mille", leistung: 32.0, raumNummer: "k03", betriebsstunden: 400))
        model.airFilters.append(AirFilter(produktbezeichnung: "Phüllüps", leistung: 32.0, raumNummer: "k03", betriebsstunden: 640))
        model.airFilters.append(AirFilter(produktbezeichnung: "Elün", leistung: 38.0, raumNummer: "108-a", betriebsstunden: 1230))
        model.airFilters.append(AirFilter(produktbezeichnung: "Phülüps", leistung: 12.0, raumNummer: "109-a", betriebsstunden: 640))
        model.airFilters.append(AirFilter(produktbezeichnung: "Gründing", leistung: 31.4, raumNummer: "121", betriebsstunden: 900))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return model.airFilters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let airFilter = model.airFilters[indexPath.row]
        
        cell.textLabel?.text = "\(airFilter.raumNummer) - \(airFilter.betriebsstunden)"
        cell.detailTextLabel?.text = "\(airFilter.produktbezeichnung) (\(airFilter.leistung)/h)"

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

    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        model.current = model.airFilters[indexPath.row]
        performSegue(withIdentifier: "detail", sender: self)
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let airFilter = model.current {
            if let viewController = segue.destination as? ViewController {
                viewController.airFilter = airFilter
            }
        }
    }
}
