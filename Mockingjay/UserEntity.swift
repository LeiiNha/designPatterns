//
//  UserEntity.swift
//  DesignPatterns
//
//  Created by Erica Geraldes on 21/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct UserEntity {
    var avatarURL: NSURL?
    var id: String?
    var aboutMe: String?
    var age: UInt?
    var distanceKM: Double?
    var instagramUsername: String?
}

extension UserEntity {
    
    init(json: JSON) throws {
        
        if let id = json["id"].string, id.count > 0 {
            self.id = id
        } else {
            print("erro")
        }
        
        if let avatarURLString = json["avatarURL"].string, let avatarURL = NSURL(string: avatarURLString) {
            self.avatarURL = avatarURL
        } else {
            print("erro")
        }
        
        if let aboutMe = json["aboutMe"].string, aboutMe.count > 0 {
            self.aboutMe = aboutMe
        }
        
        if let age = json["age"].uInt {
            self.age = age
        } else {
            print("erro")
        }
        
        if let distanceKM = json["distanceKM"].double {
            self.distanceKM = distanceKM
        }
        
        if let instagramUsername = json["instagramUsername"].string {
            self.instagramUsername = instagramUsername
        }
    }
}



extension UserEntity {
    typealias requestCompletion = (_ succeeded: Bool, _ userEntity: UserEntity?) -> Void

    static func requestUser(userId: String, accessToken: String, completion: @escaping requestCompletion ){
        
        Alamofire.request("http://localhost:9000/api/user/\(userId)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).validate().responseJSON { response in
            print(response)
            if  let userDictionary = response.result.value as? [String:Any]
            {
                let userJson = JSON(userDictionary)
                do {
                    let user = try UserEntity(json: userJson)
                    print(user)
                    completion(true, user)
                } catch {
                    completion(false,nil)
                }
            } else {
                completion(false,nil)
            }
        }
    }
}
