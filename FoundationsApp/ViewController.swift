//
//  ViewController.swift
//  FoundationsApp
//
//  Created by GUILHERME BARRETO FRANCA on 10/1/18.
//  Copyright © 2018 Elza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var storyTableView: UITableView!
    
    let story1 = Story(imageReceived: #imageLiteral(resourceName: "tullawine"), headlineReceived: "Lorem Ipsum", briefReceived: "Lorem Ipsum", textReceived: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? \n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?")
    let story2 = Story(imageReceived: #imageLiteral(resourceName: "example"), headlineReceived: "Lorem Ipsum", briefReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    let story3 = Story(imageReceived: #imageLiteral(resourceName: "tullawine"), headlineReceived: "Lorem Ipsum", briefReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    
    var stories: [Story] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stories.append(story1)
        stories.append(story2)
        stories.append(story3)
        
        storyTableView.delegate = self
        storyTableView.dataSource = self
    }
    
    // Quantidade de cells

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.count
    }
    
    // Populando a UITableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = storyTableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! StoryTableViewCell
        
        let index = indexPath.row
        
        cell.storyImage.image = stories[index].image
        cell.storyHeadline.text = stories[index].headline
        cell.storyBrief.text = stories[index].brief
        
        return cell
    }
    
    // Tamanho da TableViewCell
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    // Controle da Segue showDetailsSegue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailsSegue" {
            let index = storyTableView.indexPathForSelectedRow!
            let storySelected = stories[index.row]
            let showDetailStoryViewController = segue.destination as! DetailStoryViewController
            
            showDetailStoryViewController.detailStory = storySelected
        }
            
    }

        }
        

