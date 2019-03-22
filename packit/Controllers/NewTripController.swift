//
//  NewTripController.swift
//  packit
//
//  Created by Timothy Ludi on 3/22/19.
//  Copyright © 2019 Timothy Ludi. All rights reserved.
//

import UIKit
import RealmSwift

class NewTripController: UIViewController {
    
    let realm = try! Realm()
    
    @IBOutlet weak var tripNameField: UITextField!
    
    
    
    
    @IBAction func addTripButton(_ sender: UIButton) {
        print("got this far")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
