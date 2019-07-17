//
//  ViewController.swift
//  firebase_app
//
//  Created by Abshir Mohamed on 7/16/19.
//  Copyright © 2019 Abshir Mohamed. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ref = Database.database().reference()
        
//lines 21 and and 22 add data to DB
//        ref.child("someid/name").setValue("Mike")
//        ref.childByAutoId().setValue(["name":"Tom","role":"Admin","age":30])
        
//lines 25 - 30 retrieve data from database
        
        ref.child("someid/name").observeSingleEvent(of: .value)
        {
            //Retrieves one value from specified key
            (snapshot) in let name = snapshot.value as? String

             print(name)
    
//            (snapshot) in let employeedata = snapshot.value as? [String:Any]
        }
        
       
        
    }


}

