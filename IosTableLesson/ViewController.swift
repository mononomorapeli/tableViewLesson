//
//  ViewController.swift
//  IosTableLesson
//
//  Created by DA MAC M1 122 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {
    var cars = ["VIVO","Audi","Mazda"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
        
    }//reuse ever
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = cars[indexPath.row]
        return cell
    }
    
}

