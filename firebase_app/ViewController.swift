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
        
        ref.child
        
//lines 21 and and 22 add data to DB
        ref.child("someid/name").setValue("Mike")
        ref.childByAutoId().setValue(["name":"Tom","role":"Admin","age":30])
        
//lines 26 - 35 retrieve data from database
        
        ref.child("someid/name").observeSingleEvent(of: .value)
        {
            //Retrieves one value from specified key
            (snapshot) in let name = snapshot.value as? String

             print(name)
            
//If its more than one key value pair then then you can retrieve the data as a dictionary and get the pieces of data that you need from the dictionary
            
            (snapshot) in let employeedata = snapshot.value as? [String:Any]
        }

//lines 37-44
        //update one value
        ref.child("someid/name").setValue("ab253")
        
        //Update multiple values
        let updates = ["someid/name": "John", "-LjxaRsdsasc4QkC9HP/name":"David"]
        
        ref.updateChildValues(updates)
        
//line 49 deletes a value from the database
        ref.child("someid").removeValue()
        
        
        
       
        
    }


}

