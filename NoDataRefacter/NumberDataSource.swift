//
//  NumberDataSource.swift
//  NoDataRefacter
//
//  Created by trung on 2018/08/10.
//  Copyright © 2018 trung. All rights reserved.
//

import Foundation
import UIKit
class NumberDataSource: NSObject, UITableViewDataSource {
    
    var arrayNumber = [Int]()
    var tableViewControllerNumber: TableViewController?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(arrayNumber[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrayNumber.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
            tableViewControllerNumber?.hasNoData = arrayNumber.count == 0
            
            tableView.reloadData()
        }
    }
    
}
