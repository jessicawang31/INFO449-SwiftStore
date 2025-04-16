//
//  main.swift
//  Store
//
//  Created by Ted Neward on 2/29/24.
//

import Foundation

protocol SKU {
    var name: String {get};
    func price() -> Int;
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
    var receiptItems: [SKU] = [];
    var currTotal: Int = 0;
    
    // item
    func items() -> [SKU] {
        return receiptItems;
    }
    
    // output
    func output() -> String {
        var printed = "Receipt:\n";
        for i in self.receiptItems {
            printed += "\(i.name): $\(Double(i.price()) / 100)\n";
        }
        printed += "------------------\n";
        printed += "TOTAL: $\(Double(self.total()) / 100)";
        return printed;
    }
    
    // total, register calls on total
    func total() -> Int {
        return currTotal;
    }
    
    // add, register calls on add
    func add(_ item: SKU) {
        self.receiptItems.append(item);
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
        let tempReceipt = self.receipt;
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

