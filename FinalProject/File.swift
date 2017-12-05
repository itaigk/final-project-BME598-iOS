//
//  File.swift
//  FAWRT
//
//  Created by Haroula Kyriacou on 10/5/17.
//  Copyright © 2017 Haroula Kyriacou. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class File {
    let surgeryName: String
    let surgeryDate: String
    //let surgeryImage: UIImage?
    var images = [UIImage]()

    
    init(surgeryName: String, surgeryDate: String) {
       
        self.surgeryName = surgeryName
        
        self.surgeryDate = surgeryDate
    }
    
    func addImage(image: UIImage) {
        images.append(image)

    }
    /*
    func removeImage(image: UIImage) {
    images.remove(at: IndexPath.row)
        
    }*/
}
