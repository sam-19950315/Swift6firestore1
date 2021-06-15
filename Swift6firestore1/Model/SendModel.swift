//
//  SendModel.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/25.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseAuth

class SendModel {
    
    let db = Firestore.firestore()
    func sendCount(collectionName:String,count:Int){
        db.collection("Users").document(Auth.auth().currentUser!.uid).collection("興味分野集計").document(collectionName).setData(
        
            ["instrument":collectionName,"count":count]
        )
        
    }
    
}
    
