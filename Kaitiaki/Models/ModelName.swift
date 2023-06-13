//
//  ModelName.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 13/06/23.
//

import Foundation

class NameOfUser : Identifiable, ObservableObject {
    
    let id = UUID()
    
    @Published var username : String = ""
    
    var presentAlert : Bool {
        username == ""
    }
    
    static let singleton = NameOfUser()
    
    private init() {}
}
