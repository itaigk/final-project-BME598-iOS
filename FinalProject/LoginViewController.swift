//
//  LoginViewController.swift
//  APPYAPP
//
//  Created by arosenga on 12/3/17.
//  Copyright © 2017 arosenga. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var user = [Users]()
    @IBOutlet weak var UserNameTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    func displayMyAlertMessage(userMessage: String)
    {
        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
        
        let dismissButton = UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler:nil)
        
        myAlert.addAction(dismissButton)
        
        
        self.present(myAlert, animated: true, completion: nil)
    }
    
 @IBAction func LonginButton(_ sender: Any) {
    
    
    func getData()
    { do {
        user = try context.fetch(Users.fetchRequest())
        }
    catch{
        print("Fetching Failed")
        }
    }
    let username = UserNameTextField.text
    let userPassword = PasswordTextField.text
        
    let usernameStored = UserDefaults.standard.string(forKey: "username")
        
      
        let userPasswordStore = UserDefaults.standard.string(forKey: "userPassword")
        
        if (usernameStored == username)
        {
            if(userPasswordStore == userPassword)
            {
                
                UserDefaults.standard.set(true, forKey: "idUserLoggedIn")
                UserDefaults.standard.synchronize()
               // self.dismiss(animated: true, completion: nil)
                self.performSegue(withIdentifier: "firstseg", sender: self)
        
            }}
    else
        {
    displayMyAlertMessage(userMessage: "Usernsame and Password are not recognized, please try again")
    return
    }
    }
 
    
 /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    //    self.preformSegueWithIdentifier("SurgeryView", sender: self)
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
   */

}

