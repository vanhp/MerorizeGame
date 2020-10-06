//
//  Array+Only.swift
//  Merorize
//


import Foundation

// define additional property for the Array 

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
