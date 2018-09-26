//
//  ViewController.swift
//  NoDataRefacter
//
//  Created by trung on 2018/08/10.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textFieldDetail: UITextField!
    
    var dataDetail: String?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataDetail = textFieldDetail.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if dataDetail !=  nil {
            textFieldDetail.text = dataDetail
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

