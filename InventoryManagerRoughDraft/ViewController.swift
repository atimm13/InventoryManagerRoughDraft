//
//  ViewController.swift
//  InventoryManagerRoughDraft
//
//  Created by Timm, Adria M on 1/16/20.
//  Copyright © 2020 Timm, Adria M. All rights reserved.
//

import Cocoa
import Foundation



class ViewController: NSViewController {

    var sortBy: String = "number"
    var searchContents: String = ""

    
    
   
    @IBOutlet weak var searchField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sort()
        
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func search(_ sender: Any) {
        searchContents = searchField.stringValue
        print("\(searchContents)")
        
    }
    
    @IBAction func removeBook(_ sender: Any) {
        print("remove book")
    }
    
    @IBAction func sortByNumber(_ sender: Any) {
        sortBy = "number"
        print("sort by \(sortBy)")
        sort()
    }
    
    @IBAction func sortByTitle(_ sender: Any) {
        sortBy = "title"
        print("sort by \(sortBy)")
        sort()
    }
    
    @IBAction func sortByAuthor(_ sender: Any) {
        sortBy = "author"
        print("sort by \(sortBy)")
        sort()
    }
    
    
    func sort(){
        //called each time the sort by menu is clicked
        print("sort function called")
    }
    
    
    
    @IBOutlet weak var tableView: NSScrollView!
    //do we want a separate class for table?
    
    
    
    
    
    
    
    
    
    
}

