//
//  ViewController.swift
//  Complex JSON
//
//  Created by Kyle Lee on 5/28/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var batters = [Batter]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataService.shared.getData { (data) in
            do {
                guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? JSON else { return }
                let itemResponse = ItemResponse(json: json)
                guard let batters = itemResponse?.items.first?.batters.batters else { return }
                print(batters)
                self.batters = batters
                
                
            } catch {
                print(error)
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return batters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = batters[indexPath.row].type
        cell.detailTextLabel?.text = batters[indexPath.row].id
        return cell
    }
}

