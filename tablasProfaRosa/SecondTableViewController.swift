//
//  SecondTableViewController.swift
//  tablasProfaRosa
//
//  Created by guitarrkurt on 18/06/15.
//  Copyright (c) 2015 BUAP. All rights reserved.
//
import UIKit

class SecondTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource{
    /*var foodDictionary = NSMutableDictionary!
    var foodItems
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }*/
    
    var foodDictionary: NSMutableDictionary!
    var foodItems: NSArray!
    
    var typeItems: String? {
        didSet{
            self.configureView()
        }
    }
    
    func configureView()
    {
        let path = NSBundle.mainBundle().pathForResource("TableData", ofType: "plist")
        foodDictionary = NSMutableDictionary(contentsOfFile: path!)
        if(typeItems != nil){
            foodItems = NSArray(array: foodDictionary.objectForKey(typeItems!) as! [String])
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SimpleItem",forIndexPath: indexPath) as! UITableViewCell
        let object = foodItems[indexPath.row] as! String
        cell.textLabel?.text = object
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("ShowDetail", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "ShowDetail"){
            if let indexPath = tableView.indexPathForSelectedRow() {
                let object = foodItems[indexPath.row] as! String
                (segue.destinationViewController as! ViewController).itemDetail = object
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}