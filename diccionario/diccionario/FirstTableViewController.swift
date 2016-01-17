//
//  ViewController.swift
//  diccionario
//
//  Created by Javier Contreras on 17/1/16.
//  Copyright © 2016 Ocon. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var FirstTableArray = [String] ()
    
    var SecondArray = [SecondTable] ()
    
    var ThirdArray = [ThirdView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FirstTableArray = ["First", "Seccond", "Third", "Fourth"]
        
        SecondArray = [SecondTable (SecondTitle:["FirstFirst","SecondFirst","ThirdFirst"]),
                    SecondTable (SecondTitle:["FirstSecond","SecondSecond","ThirdSecond"]),
                    SecondTable (SecondTitle:["FirstThird","SecondThird","ThirdThird"]),
            SecondTable (SecondTitle:["Fourth","Ingles"])]
    
    
        ThirdArray = [ThirdView (ThirdViewArray: ["1","2","3"]),
        ThirdView (ThirdViewArray: ["1","2","3"]),
        ThirdView (ThirdViewArray: ["1","2","3"]),
        ThirdView (ThirdViewArray: ["1"])]
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableArray.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        var cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var indexPath :  NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        var DestViewController = segue.destinationViewController as! SecondTableViewController
        
        
        var SecondTableArrayTwo : SecondTable
        SecondTableArrayTwo = SecondArray[indexPath.row]
        DestViewController.SecondArray = SecondTableArrayTwo.SecondTitle
        
        
        var ThirdAnswerArray : ThirdView
        ThirdAnswerArray = ThirdArray [indexPath.row]
        
        DestViewController.SecondAnswerArray = ThirdAnswerArray.ThirdViewArray
    }
}

