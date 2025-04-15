//
//  main.swift
//  Store
//
//  Created by Ted Neward on 2/29/24.
//

import Foundation

protocol SKU {
    var name: String {get};
    func price -> Int;
}

class Item: SKU {
    var name: String;
    var priceEach: Int;
    
    init (name: String, priceEach: Int) {
        self.name = name;
        self.priceEach = priceEach;
    }
    
    func price() -> Int {
        return priceEach;
    }
}

class Receipt {
    // item
    func item() {
        
    }
    
    // output
    func output() {
        
    }
}

class Register {
    // create receipt when register created
    var receipt: Receipt = Receipt();
    
    // scan
    func scan(_ sku: SKU) {
        // add SKU to receipt
        receipt.add(sku);
    }
    
    // subtotal
    func subtotal() -> Int {
        return receipt.total();
    }
    
    // total
    func total() -> Receipt {
        var tempReceipt = self.receipt;
        receipt = Receipt(); // set it back
        return tempReceipt;
        
    }
}

class Store {
    let version = "0.1"
    func helloWorld() -> String {
        return "Hello world"
    }
}

