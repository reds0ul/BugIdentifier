//
//  registerViewController.swift
//  Project BI
//
//  Created by ATIK on 11/9/17.
//  Copyright © 2017 ATIK_Tech. All rights reserved.
//

import UIKit
import Firebase

class registerViewController: UIViewController {

    @IBOutlet var emailTF: UITextField!
    
    @IBOutlet var passwordTF: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTF.text!, password: passwordTF.text!, completion: {
            user, error in
            
            if(error != nil){
                print("No User Found")
            } else {
                print("Succes")
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "firstVC")
                self.present(vc, animated: true, completion: nil)
            }
        })
    
    
    
    
    }
    
    @IBAction func registerButton(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTF.text!, password: passwordTF.text!, completion: {
            user, error in
            
            if (error != nil){
                print("Sign Up Failed")
            } else {
                print("Your In")
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "firstVC")
                self.present(vc, animated: true, completion: nil)
            }
        })
    }

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
