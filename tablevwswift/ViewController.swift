//
//  ViewController.swift
//  tablevwswift
//
//  Created by Mrunalini on 28/05/17.
//  Copyright © 2017 Mrunalini nemade. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet var tableView: UITableView!
    let textCellIdentifier = "TextCell"
    let fruit = ["Apple","Banana","Orange","Strawberry","Blackberry","Rasberry"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
     let  cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier,forIndexPath: indexPath)
        
        let row = indexPath.row
        
        cell.textLabel?.text = fruit[row]
        
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let  row = indexPath.row
        print(fruit[row])
        
    }
}

