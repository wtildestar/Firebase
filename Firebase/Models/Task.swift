//
//  Task.swift
//  Firebase
//
//  Created by wtildestar on 01/12/2019.
//  Copyright © 2019 wtildestar. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase

struct Task {
    let title: String
    let userId: String
    let ref: DatabaseReference? // создаем значение локально и отправляем в бд, но когда создаем локально ref у него нет поэтому  свойство опционально
    var completed: Bool = false
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
        self.ref = nil
    }
    
    // snapshot - текущая информация на данный момент
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title = snapshotValue["title"] as! String
        userId = snapshotValue["userId"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
    }
    
}
