//
//  SearchBirdViewController.swift
//  Twitcher v2.0
//
//  Created by Qiuye Jin on 9/4/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import UIKit

class SearchBirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var birds : [Bird] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //get the data from core data
        getData()
        
        //reload the table
        tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "searchCell")
        
        let bird = birds[indexPath.row]
        
        cell.textLabel?.text = bird.commonName
        cell.detailTextLabel?.text = bird.diet
        
        return cell
    }
    
    func getData(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            birds = try context.fetch(Bird.fetchRequest())
        }
        catch {
            print("Fetching Failed")
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
