//
//  UIImagePickerController.swift
//  FAWRT
//
//  Created by Haroula Kyriacou on 11/16/17.
//  Copyright © 2017 Haroula Kyriacou. All rights reserved.
//
import UIKit
import CoreData
    
    class ImagePickerController: UIImagePickerController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
            self.delegate = self
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
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            self.presentingViewController?.dismiss(animated: true, completion: nil)
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
            if self.sourceType == .camera {
                var imageToSave = UIImage()
                
                if let editedPhoto = info[UIImagePickerControllerEditedImage] {
                    //save the edited image
                    imageToSave = editedPhoto as! UIImage
                } else {
                    //save the original image
                    imageToSave = info[UIImagePickerControllerOriginalImage] as! UIImage
                }
                UIImageWriteToSavedPhotosAlbum(imageToSave, nil, nil, nil)
                
                self.presentingViewController?.dismiss(animated: true, completion: nil)
            }
        }
    }


