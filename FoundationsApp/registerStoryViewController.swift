//
//  registerStoryViewController.swift
//  FoundationsApp
//
//  Created by EMANUELA CORDEIRO DE SOUSA on 18/10/2018.
//  Copyright © 2018 Elza. All rights reserved.
//

import Foundation
import UIKit

class registerStoryViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var contactTextField: UITextField!
    @IBOutlet weak var storyTextView: UITextView!
    
    var name: String = ""
    var contact: String = ""
    var story: String = ""
    
    @IBAction func sendButton(_ sender: UIButton) {
        name = nameTextField.text!
        contact = contactTextField.text!
        story = storyTextView.text!
        
        print(name)
        print(contact)
        print(story)
        
    }

    
    }
