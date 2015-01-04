//
//  PhotosTableViewController.swift
//  SeguesAndScenesDemo
//
//  Created by Yosemite on 1/3/15.
//  Copyright (c) 2015 Yosemite. All rights reserved.
//

import UIKit
import Foundation

class PhotosTableViewController: UITableViewController {
    
    var photoArray:[PhotoData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var newPhoto = PhotoData(name: "Emerald Bay", filename: "emeraldbay", notes: "Emerald Bay, one of the bays is tested here.")
        photoArray.append(newPhoto)
        
        newPhoto = PhotoData(name: "A Joshua tree", filename: "joshuatree", notes: "Joshua tree, one of the trees is tested here")
        photoArray.append(newPhoto)
        
        newPhoto = PhotoData(name: "Sunset in Ventura", filename: "sunset", notes: "Sunset scene, one of the scenes is tested here")
        photoArray.append(newPhoto)
        
        newPhoto = PhotoData(name: "Snowman at Lake Tahoe", filename: "snowman", notes: "Snowman at Tahoe, one of the snowmen is tested here")
        photoArray.append(newPhoto)
        
        newPhoto = PhotoData(name: "Red Rock", filename: "redrock", notes: "Red Rock, one of the rocks is tested here")
        photoArray.append(newPhoto)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return photoArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myPrototypeCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        var currentPhoto = photoArray[indexPath.row]
        cell.textLabel?.text = currentPhoto.name

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        var secondScene = segue.destinationViewController as DisplayViewController
        // Pass the selected object to the new view controller.
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            let selectedPhoto = photoArray[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }
    }

}
