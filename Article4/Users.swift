//
//  Users.swift
//  Users
//
//  Created by Nitigya Kapoor on 30/03/20.
//  Copyright © 2020 Dhruvik Chevli. All rights reserved.
//

import Foundation

struct Address: Decodable{
    var city:String
}
struct Company:Decodable{
    var name:String
}
struct User : Decodable{
    var id : Int
    var name : String
    var username : String
    var website : String
    var address: Address
    var company: Company
}
