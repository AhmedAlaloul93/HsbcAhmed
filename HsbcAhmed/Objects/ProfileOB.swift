//
//  ProfileOB.swift
//  HsbcAhmedAlaloul
//
//  Created by Ahmed Alaloul on 11/18/19.
//  Copyright © 2019 AhmedAlaloul. All rights reserved.
//

import UIKit

class ProfileOB: NSObject{
 
    
    fileprivate(set) var firstName:String?
    fileprivate(set) var lastName:String?
    fileprivate(set) var address:String?
    fileprivate(set) var phoneNumber:String?
    fileprivate(set) var position:String?
    
  
    required init?(dictionary: Dictionary<String, Any>) {
        if let  value_ = dictionary["FirstName"] as? String{
            self.firstName = value_
        }
    
        
        if let  value_ = dictionary["LastName"] as? String{
            self.lastName = value_
        }
        if let  value_ = dictionary["address"] as? String{
            self.address = value_
        }
        if let  value_ = dictionary["Phone"] as? String{
            self.phoneNumber = value_
        }
        if let  value_ = dictionary["Position"] as? String{
            self.position = value_
        }
        
       
    }
    
    
    
}
