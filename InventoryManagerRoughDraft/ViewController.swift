//
//  ViewController.swift
//  InventoryManagerRoughDraft
//
//  Created by Timm, Adria M on 1/16/20.
//  Copyright © 2020 Timm, Adria M. All rights reserved.
//

import Cocoa
import Foundation

class Book: NSObject{
    @objc dynamic var isbn: Int
    @objc dynamic var title: String
    @objc dynamic var author: String
    @objc dynamic var qty: Int
    @objc dynamic var price: String



    init(isbn: Int, title: String, author: String, qty: Int, price: String){
        self.isbn = isbn
        self.title = title
        self.author = author
        self.qty = qty
        self.price = price

    }
}

class ViewController: NSViewController {

    var sortBy: String = "number"
    var searchContents: String = ""
    @IBOutlet weak var tableView: NSTableView!


    @objc dynamic var books: [Book] = [Book(isbn: 14, title: "This Book", author: "Adria Timm", qty: 2, price: "4.99")]
    
   
    @IBOutlet weak var searchField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self as? NSTableViewDelegate
        tableView.dataSource = self as? NSTableViewDataSource
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
    
    
    
    
    
    
    
    
    
    
    
}



//extension ViewController: NSTableViewDataSource {
//     func numberOfRows(in tableView: NSTableView) -> Int {
//            return viewModel.purchases.count
//        }
//    }
// extension ViewController: NSTableViewDelegate {
//
// }

