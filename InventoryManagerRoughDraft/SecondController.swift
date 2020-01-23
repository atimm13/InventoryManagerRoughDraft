//
//  SecondController.swift
//  InventoryManagerRoughDraft
//
//  Created by Timm, Adria M on 1/16/20.
//  Copyright © 2020 Timm, Adria M. All rights reserved.
//

import Cocoa


class SecondController: NSViewController {

    required init(coder: NSCoder){
        
        super.init(coder: coder)!
        addBook()
    }
    
    
    func addBook(){
        print("add book")
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(self)
    }
    
}
