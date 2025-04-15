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
    var items: [SKU] = [];
    var currTotal: Int = 0;
    
    // item
    func item() -> [SKU] {
        return items;
    }
    
    // output
    func output() -> String {
        var output: String;
        output = "Receipt: \n";
        
        // loop through all the items as they print the same
        for item in items {
            output += "\(item.name): $\(Double(item.price()) / 100.0)\n"
        }
        output += " ------------------ \n TOTAL $\(Double(self.total()) / 100.0)"
        return output;
    }
    
    // total, register calls on total
    func total() -> Int {
        return currTotal;
    }
    
    // add, register calls on add
    func add(_ item: SKU) {
        self.items.append(item);
        self.currTotal += item.price();
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

