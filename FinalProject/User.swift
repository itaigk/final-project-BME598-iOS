//
//  User.swift
//  Infection_Detection
//
//  Created by Itai Kreisler on 11/29/17.
//  Copyright © 2017 Haroula Kyriacou. All rights reserved.
//

import Foundation
import CoreData

class User: NSObject {
    let userUsername: String
    let userPassword: String
    let userFile: File?
    
    init(username: String, password: String, file: File?) {
        
        self.userUsername = username
        
        self.userPassword = password
        
        self.userFile = file
    }
    
}
