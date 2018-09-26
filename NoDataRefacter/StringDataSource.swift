//
//  StringDataSource.swift
//  NoDataRefacter
//
//  Created by trung on 2018/08/10.
//  Copyright © 2018 trung. All rights reserved.
//

import Foundation
import UIKit
class StringDataSource: NSObject, UITableViewDataSource {
    
    var arrayString =  ["a", "b"]
    var tableViewControllerString: TableViewController?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayString[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrayString.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic )
            
            tableViewControllerString?.hasNoData = arrayString.count == 0
            
            tableView.reloadData()
        }
    }
    
    
}
