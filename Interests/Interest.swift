//
//  Interest.swift
//  Interests
//
//  Created by neal on 2017/7/3.
//  Copyright © 2017年 Cloudoc. All rights reserved.
//

import UIKit

class Interest {

    var id = ""
    var title = ""
    var description = ""
    var numberOfMembers = 0
    var numberOfPages = 0
    var featuredImage: UIImage?
    
    init(id: String, title: String , description: String, featuredImage: UIImage!) {
        self.id = id
        self.title = title
        self.description = description
        self.featuredImage = featuredImage
        numberOfMembers = 1
        numberOfPages = 1
    }
    
   static func createInterests() -> [Interest] {
        return [
            Interest(id: "r1", title: "We Love Travelling Around the World", description: "we love backpack and adventures! we walked to antartica yesterday, and camped with some cute pingguines,and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "r1")!),
            Interest(id: "r2", title: "Romance Stories", description: "we love romantic stories. we walked to antarice yesterday,  and camped with some cute pingguines,and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "r2")!),
            Interest(id: "r3", title: "iOS Dev", description: "Create beautiful apps. we walked to antartica yesterday,  and camped with some cute pingguines,and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "r3")!),
            Interest(id: "r4", title: "Race", description: "Cars and aircrafts and boats and sky. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named:"r4")!),
            Interest(id: "r5", title: "Personal Development", description: "Meet life with full presence. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "r5")!),
            Interest(id: "r6", title: "Reading News", description: "Get up to date with breaking-news. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", featuredImage: UIImage(named: "r6")!),
            
        ]
    }
    
}
