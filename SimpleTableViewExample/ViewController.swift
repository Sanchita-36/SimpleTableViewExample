//
//  ViewController.swift
//  SimpleTableViewExample
//
//  Created by Mac on 27/01/21.
//  Copyright © 2021 Sanchita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var myArray = ["Angular","Java", "C#","Swift","Futter","Kotlin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = myArray[indexPath.row]
        cell?.detailTextLabel?.text = "Course"
        return cell!
    }

}

