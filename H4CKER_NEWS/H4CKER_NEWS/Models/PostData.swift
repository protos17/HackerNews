//
//  PostData.swift
//  H4CKER_NEWS
//
//  Created by Данил Чапаров on 19.09.2021.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
