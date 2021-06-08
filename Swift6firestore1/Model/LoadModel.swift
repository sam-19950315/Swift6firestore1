//
//  LoadModel.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/05.
//

import Foundation
import FirebaseFirestore

protocol GetDataProtocol {
    func getData(dataArray:[PersonalData])
}


class LoadModel{
    
    let db = Firestore.firestore()
    var personalDataArray = [PersonalData]()
    var getDataProtocol:GetDataProtocol?
    
    func loadMyRecordData(userID:String){
        
        db.collection("Users").document(userID).collection("興味分野集計").addSnapshotListener { [self] (snapShot, error) in
            
            self.personalDataArray = []
            if error != nil{
                return
            }
            
            if let snapShotDoc = snapShot?.documents{
                
                for doc in snapShotDoc{
                    let data = doc.data()
                    if let count = data["count"]as?Int,let instrumentName = data["instrument"]as?String{
                        
                        let newPersonalData = PersonalData(instrument: instrumentName, starCount: count)
                        self.personalDataArray.append(newPersonalData)
                    }
                    
                }
                
            }
            self.getDataProtocol?.getData(dataArray: self.personalDataArray)
        }
        
    }
    
    
    
}
