//
//  ViewController.swift
//  Project BI
//
//  Created by ATIK on 11/8/17.
//  Copyright © 2017 ATIK_Tech. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBAction func logoutButton(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

