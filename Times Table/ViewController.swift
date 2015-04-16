//
//  ViewController.swift
//  Times Table
//
//  Created by Anuja Tupe on 4/15/15.
//  Copyright (c) 2015 Gravity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!

    @IBOutlet weak var sliderValue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell (style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        let slider = Int(sliderValue.value * 20)
        cell.textLabel?.text = String (slider * (indexPath.row+1))
        return cell
    }

    
}

