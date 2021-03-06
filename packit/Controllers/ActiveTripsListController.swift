//
//  ActiveTripsListController.swift
//  packit
//
//  Created by Timothy Ludi on 3/20/19.
//  Copyright © 2019 Timothy Ludi. All rights reserved.
//

import UIKit
import RealmSwift

class ActiveTripsListController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    
    @IBOutlet weak var tripsTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("got to the first controller, yay!")
        // Do any additional setup after loading the view.
        
        let tripCell = UINib(nibName: "TripCell", bundle: nil)
        self.tripsTable.register(tripCell, forCellReuseIdentifier: "tripCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tripsTable.reloadData()
    }
    
    

    
    //**** Format the Trip Table ****//
    //_______________________________//
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tripCell", for: indexPath) as! TripCell
        
        
        //variables for this cell are in the TripCell Nib //
        cell.tripName.text = "Hello from custom cell"
        
        
        return cell
    }
}
