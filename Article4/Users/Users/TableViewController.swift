//
//  TableViewController.swift
//  Users
//
//  Created by Dhruvik Chevli on 28/03/20.
//  Copyright © 2020 Dhruvik Chevli. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var users : [User] = []

    fileprivate func setUpTableView(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(goToSecondScreen))
        self.navigationItem.rightBarButtonItem = add
        tableView.register(UserCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 150
        tableView.allowsSelection = false
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.title = "Users"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        users = fetchData()
        setUpTableView()
    }

    @objc func goToSecondScreen(){
        let sampleScreen = SampleScreen()
        self.navigationController?.present(sampleScreen, animated: true)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! UserCell
        cell.layer.cornerRadius = 15
        let user = users[indexPath.row]
        cell.set(res : user)
        return cell
    }

}

extension TableViewController {
    
    func fetchData() -> [User] {
        let info1 = User(id: 1, name: "Dhruvik", username: "Syndicate", website: "Dhruvik.com", address: Address(city: "NYC"), company: Company(name: "MIT"))
        let info2 = User(id: 2, name: "Nitigya", username: "Itsnitigya", website: "Nitigya.com",address: Address(city: "NYC"), company: Company(name: "MIT"))
        return [info1,info2]
    }
    
}




