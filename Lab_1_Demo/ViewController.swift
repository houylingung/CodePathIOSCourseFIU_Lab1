//
//  ViewController.swift
//  Lab_1_Demo
//
//  Created by Houyling Ung on 1/28/22.
//

import UIKit

class ViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    var myArray = ["one", "two", "three","four","five"]
    @IBOutlet weak var TableView: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.Label.text = myArray[indexPath.row]
        
        return cell
    }
    

    // weak var TableView: UITableView!
    
    
   override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.dataSource = self
        TableView.delegate = self
        // Do any additional setup after loading the view.
    }


}

