//
//  ChallengeCategory.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 25/05/23.
//

import Foundation

struct ChallengeCategory: Hashable {
    let name: String
    let category: Category
    
    enum Category: String, CaseIterable {
        case internet
        case equipment
    }
}
