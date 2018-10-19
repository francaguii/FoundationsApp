//
//  RegisteredStory.swift
//  FoundationsApp
//
//  Created by GUILHERME BARRETO FRANCA on 10/18/18.
//  Copyright © 2018 Elza. All rights reserved.
//

import Foundation

class RegisteredStory {
    
    var name: String
    var contact: String
    var story: String
    
    init(nameReceived: String, contactReceived: String, storyReceived: String) {
        self.name = nameReceived
        self.contact = contactReceived
        self.story = storyReceived
    }
}
