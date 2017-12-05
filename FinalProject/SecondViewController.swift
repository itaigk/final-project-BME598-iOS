//
//  2ndViewController.swift
//  FAWRT
//
//  Created by Haroula Kyriacou on 10/25/17.
//  Copyright © 2017 Haroula Kyriacou. All rights reserved.
//

import UIKit

import CoreData

class SecondViewController: UIViewController {
    var imagePC = UIImagePickerController()


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
    
    @IBAction func startCamera(_ sender: Any) {
        //first check: can I access the camera?
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            //if so, launch
            imagePC = UIImagePickerController()
            imagePC.sourceType = .camera
            imagePC.cameraCaptureMode = .photo
            imagePC.allowsEditing = true
            self.present(imagePC, animated: true, completion: nil)
        } else {
            print("Do not have access to the camera")
        }
        
    }
    
    @IBAction func launchPhotoLibrary(_ sender: Any) {
        //first check: can I access the photo library?
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            //if so, launch
            imagePC = UIImagePickerController()
            imagePC.sourceType = .photoLibrary
            imagePC.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
            self.present(imagePC, animated: true, completion: nil)
        } else {
            print("Do not have access to the photo library")
        }

}
}
