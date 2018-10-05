//
//  ViewController.swift
//  FoundationsApp
//
//  Created by GUILHERME BARRETO FRANCA on 10/1/18.
//  Copyright © 2018 Elza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyTableView: UITableView!
    
    let story1 = Story(heroImageReceived: #imageLiteral(resourceName: "example"), titleReceived: "Lorem Ipsum", descriptionReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    let story2 = Story(heroImageReceived: #imageLiteral(resourceName: "example"), titleReceived: "Lorem Ipsum", descriptionReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    let story3 = Story(heroImageReceived: #imageLiteral(resourceName: "example"), titleReceived: "Lorem Ipsum", descriptionReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

