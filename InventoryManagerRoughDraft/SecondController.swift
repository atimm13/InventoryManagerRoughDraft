//
//  SecondController.swift
//  InventoryManagerRoughDraft
//
//  Created by Timm, Adria M on 1/16/20.
//  Copyright © 2020 Timm, Adria M. All rights reserved.
//

import Cocoa


class SecondController: NSViewController {
    
    var ISBN: String = ""
    var Title: String = ""
    var Author: String = ""
    var Quantity: String = ""
    var Price: String = ""
    

    required init(coder: NSCoder){
        
        super.init(coder: coder)!
     
    
    }
    @IBAction func cancel(_ sender: Any) {
         self.dismiss(self)
    }
    
    @IBAction func AddButton(_ sender: Any) {
        ISBN = ISBNTextField.stringValue
        print("\(ISBN)")
        Title = titleTextField.stringValue
        print("\(Title)")
        Author = authorTextField.stringValue
        print("\(Author)")
        Quantity = quantityTextField.stringValue
        print("\(Quantity)")
        Price = priceTextField.stringValue
        print("\(Price)")
        print("hellO")
    }
    
    
    @IBOutlet weak var ISBNTextField: NSTextField!
    
   
    
    @IBOutlet weak var titleTextField: NSTextField!
    
    
    
    @IBOutlet weak var authorTextField: NSTextField!
    
    
    
    @IBOutlet weak var quantityTextField: NSTextField!
    
    
    
    @IBOutlet weak var priceTextField: NSTextField!
    
    
}
