//
//  SignupViewController.swift
//  Infection_Detection
//
//  Created by Haroula Kyriacou on 11/27/17.
//  Copyright © 2017 Haroula Kyriacou. All rights reserved.
//

import UIKit
import CoreData

class SignupViewController: UIViewController {
   
var userArray = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var FirstName: UITextField!
    @IBOutlet var LastName: UITextField!
  
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var secondPassword: UITextField!
    
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
     if (segue.identifier == "endOfSignUp"){
        
        /*
        // Validate the text fields
        
        if password == secondPassword
        {var alert = UIAlertView(title: "Invalid", message: "Passwords do not match", delegate: self, cancelButtonTitle: "OK")
            alert.show()
        }
        
        else if (username.text?.characters.count)! < 5 {
            var alert = UIAlertView(title: "Invalid", message: "Username must be greater than 5 characters", delegate: self, cancelButtonTitle: "OK")
            alert.show()
            
        } else if (password.text?.characters.count)! < 8 {
            var alert = UIAlertView(title: "Invalid", message: "Password must be greater than 8 characters", delegate: self, cancelButtonTitle: "OK")
            alert.show()
         
        }else {
            
        var newUser = User(username: username.text!, password: password.text!, file: nil)
            
        func addUser(){
                userArray.append(newUser)
            }
            
 
        var upcoming: TableViewOneTableViewController = segue.destination as! TableViewOneTableViewController
        */
    
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
}

}
       
}
