//
//  registerStoryViewController.swift
//  FoundationsApp
//
//  Created by EMANUELA CORDEIRO DE SOUSA on 18/10/2018.
//  Copyright © 2018 Elza. All rights reserved.
//

import Foundation
import UIKit

class RegisterStoryViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var contactTextField: UITextField!
    @IBOutlet weak var storyTextView: UITextView!
    
    var name: String = ""
    var contact: String = ""
    var story: String = ""

    
    lazy var rstory = RegisteredStory(nameReceived: name, contactReceived: contact, storyReceived: story)
    
    lazy var registeredStories: [RegisteredStory] = []
    
    @IBAction func sendButton(_ sender: UIButton) {
        rstory.name = nameTextField.text!
        rstory.contact = contactTextField.text!
        rstory.story = storyTextView.text!
        
        registeredStories.append(rstory)
        
        print(rstory.name)
        print(rstory.contact)
        print(rstory.story)
        
        let alertController = UIAlertController(title: "Registro realizado com sucesso!", message:
            "Iremos analisar sua história e em breve entraremos em contato. Aguarde!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.navigationController?.popToRootViewController(animated: true)
        }))
        
       self.present(alertController, animated: true, completion: nil)
        
    }
    

    
}
