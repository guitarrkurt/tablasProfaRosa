//
//  FirstTableViewController.swift
//  tablasProfaRosa
//
//  Created by guitarrkurt on 18/06/15.
//  Copyright (c) 2015 BUAP. All rights reserved.
//

import UIKit


class FirstTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate{

   /* var foodDictionary: NSMutableDictionary!
    var foodTypes: NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("TableData", ofType: "plist")
        foodDictionary = NSMutableDictionary(contentsOfFile: path!)
        foodTypes = NSArray(array: foodDictionary.keyEnumerator().allObjects)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return foodDictionary.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier("SimpleItem", forIndexPath: indexPath) as! UITableViewCell
        let object = foodTypes[indexPath.row] as! String
        cell.textLabel?.text = object
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        //Quien lo esta mandando a llamar
        performSegueWithIdentifier("ShowList", sender: self)
    }
    
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showList"{
            if let indexPath = tableView.indexPathForSelectedRow(){
                let object =
            }
        }
    }*/
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowList" {
            if let indexPath = tableView.indexPathForSelectedRow(){
                let object = foodTypes[indexPath.row] as! String
                (segue.destinationViewController as! SecondTableViewController).typeItems = object
            }
        }
    }*/
    var foodDictionary: NSMutableDictionary!
    var foodType: NSArray!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("TableData", ofType: "plist")
        foodDictionary = NSMutableDictionary(contentsOfFile: path!)
        foodType = NSArray(array: foodDictionary.keyEnumerator().allObjects)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodDictionary.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SimpleItem",forIndexPath: indexPath) as! UITableViewCell
        let object = foodType[indexPath.row] as! String
        cell.textLabel?.text = object
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("ShowList", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowList" {
            if let indexPath = tableView.indexPathForSelectedRow(){
                let object = foodType[indexPath.row] as! String
                (segue.destinationViewController as! SecondTableViewController).typeItems = object
            }
        }
    }
}




