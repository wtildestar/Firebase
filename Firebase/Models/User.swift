//
//  User.swift
//  Firebase
//
//  Created by wtildestar on 01/12/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import Foundation
import FirebaseAuth

struct User {
    
    let uid: String
    let email: String
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
    }
    
}

