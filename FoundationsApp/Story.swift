//
//  Story.swift
//  FoundationsApp
//
//  Created by GUILHERME BARRETO FRANCA on 10/1/18.
//  Copyright © 2018 Elza. All rights reserved.
//

import Foundation
import UIKit

class Story {
    var image: UIImage
    var headline: String
    var brief: String
    var text: String
    var phone: String
    
    init (imageReceived: UIImage, headlineReceived: String, briefReceived: String, textReceived: String, phoneReceived: String) {
        self.image = imageReceived
        self.headline = headlineReceived
        self.brief = briefReceived
        self.text = textReceived
        self.phone = phoneReceived

    }
}
