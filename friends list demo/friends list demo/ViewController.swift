//
//  ViewController.swift
//  friends list demo
//
//  Created by Saransh G on 7/20/19.
//  Copyright © 2019 Saransh G. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let cellId = "cellId"
    let twoDimensionalArray = [
        ["Beth", "Danny", "Chris", "Wallow"],
        ["Dwight", "Jim", "Pam", "Micheal"],
        ["Bob", "Patrick", "Ward", "Sandy"],
        ["Ed", "Edd", "Eddy"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Friends"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimensionalArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        cell.textLabel?.text = name
        cell.textLabel?.text = "\(name)"
        return cell
    }
}
