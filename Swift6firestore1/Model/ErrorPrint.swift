//
//  ErrorPrint.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/11.
//

import Foundation

class ErrorPrintModel{
    var errorStringPrint = String()
    
    func errorprint(error:String){
        
        
        switch error {
        case "auth/weak-password":
            return errorStringPrint = "パスワードは6文字以上にしてください。"
        default:
            return errorStringPrint = "テスト"
        }
        
    }

    
    
}
