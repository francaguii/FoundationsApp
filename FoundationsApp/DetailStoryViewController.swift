//
//  DetailStoryViewController.swift
//  FoundationsApp
//
//  Created by EMANUELA CORDEIRO DE SOUSA on 05/10/2018.
//  Copyright © 2018 Elza. All rights reserved.
//

import Foundation
import UIKit

class DetailStoryViewController: UIViewController {
    
    var detailStory: Story!
    
    @IBOutlet weak var detailScrollView: UIScrollView!
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailHeadline: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    @IBOutlet weak var detailText: UILabel!
    
    @IBAction func makeCall(_ sender: Any) {
        
        /*guard let contact = sender.titleLabel?.text, let url = URL(string:"1234-5678://\(contact)") else{
         return
         }
         UIApplication.shared.open(url)*/
        
        
        callNumber(phoneNumber: detailStory.phone)
    }
    
    
    @available(iOS 10.0, *)
    func callNumber(phoneNumber: String) {
        
        if let phoneCallURL = URL(string: "tel://\(phoneNumber)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailScrollView.bottomAnchor.constraint(equalTo: detailText.bottomAnchor).isActive = true
        
        detailImage.image = detailStory.image
        detailHeadline.text = detailStory.headline
        detailDescription.text = detailStory.brief
        detailText.text = detailStory.text
        
        
    }
    
    
    
}


