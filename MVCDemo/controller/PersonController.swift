//
//  PersonController.swift
//  MVCDemo
//
//  Created by Jayant Tiwari on 08/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

import UIKit

class PersonController {
    
    func fetchName() -> String {
        
        let person = Person(name: "Saket Newaskar")
        return person.name
    }
    
    func saveData()  {
        
        UserDefaults.standard.set("Tejaswi Gaikwad", forKey: "name")
    }
    
    func getData() -> String {
    
         var myName = UserDefaults.standard.string(forKey: "name") as! String
        
        return Person(name: myName).name
    }
}
