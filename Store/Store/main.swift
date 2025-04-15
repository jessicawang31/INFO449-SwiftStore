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
    
}

class Register {
    // subtotal
    func subtotal() {
        
    }
    
    // total
    func total() {
        
    }
}

class Store {
    let version = "0.1"
    func helloWorld() -> String {
        return "Hello world"
    }
}

